<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use App\Models\Holiday;

class FetchHolidays extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'fetch:holidays';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch public holidays from Calendarific API';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $apiKey = env('CALENDARIFIC_API_KEY');
        $year = now()->year;
        $country = 'IN'; // Change to your desired country code

        $response = Http::get("https://calendarific.com/api/v2/holidays?&api_key=$apiKey&country=$country&year=$year");

        if ($response->successful()) {
            $holidays = $response->json()['response']['holidays'];

            foreach ($holidays as $holiday) {
                Holiday::updateOrCreate(
                    ['name' => $holiday['name'], 'date' => $holiday['date']['iso']],
                    ['type' => $holiday['type'][0]]
                );
            }

            $this->info('Holidays fetched successfully!');
        } else {
            $this->error('Failed to fetch holidays.');
        }
    }
}
