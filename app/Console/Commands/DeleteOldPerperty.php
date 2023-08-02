<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Property;
use Carbon\Carbon;
class DeleteOldPerperty extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'records:delete';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Delete 30 days old Property Records';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $thirtyDaysAgo = Carbon::now()->subDays(30);
        Property::where('created_at', '<', $thirtyDaysAgo)->delete();
        $thirtyDaysAgo->created_at = now(); // Update the "modified_on" field
        $thirtyDaysAgo->save();
        $this->info('Old records deleted successfully.');
    }
}
