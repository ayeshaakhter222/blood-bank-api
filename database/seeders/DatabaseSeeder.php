<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        /*User::factory()
                ->hasAttached(
                    Role::factory()
                        ->count(2)
                        ->state(function (array $attributes, User $user) {
                            if (Role::where('name', 'Admin')->count()) {
                                return ['name' => 'Doner'];
                            } else {
                                return ['name' => 'Admin'];
                            }
                        })
                )
                ->create();*/

        \DB::table('roles')->insert(['name' => 'Admin']);
        \DB::table('roles')->insert(['name' => 'Doner']);
    }
}
