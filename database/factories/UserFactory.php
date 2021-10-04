<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = User::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'remember_token' => Str::random(10),
            "first_name" => $this->faker->firstName(),
            "last_name" => $this->faker->lastName(),
            'email_verified_at' => now(),
            "gender" => "m",
            "blood_type" => "O+",
            "birth_date" => "1998-02-13",
            "address" => "East Razabazar, Firmgate, Dhaka",
            "city" => "Dhaka",
            "temperature" => $this->faker->numberBetween(96,99),
            "pulse" => $this->faker->numberBetween(1,3),
            "bp" => $this->faker->numberBetween(80,90).'-'.$this->faker->numberBetween(100,130),
            "weight" => $this->faker->numberBetween(55,65),
            "hemoglobin" => $this->faker->numberBetween(11,20),
            "mobile" => "01717852644",
            "email" => $this->faker->unique()->safeEmail(),
            "password" => bcrypt("123456")
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
