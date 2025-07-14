<x-app-layout>
    <x-slot name="header">
        <div class="text-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Welcome to Quantum Sky Bus') }}
            </h2>
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-4xl mx-auto sm:px-6 lg:px-8 space-y-6">

            {{-- Flash Success Message --}}
            @if(session('success'))
                <div class="bg-green-100 text-green-800 p-4 rounded font-semibold text-center">
                    {{ session('success') }}
                </div>
            @endif

            {{-- Search Trips --}}
            <div class="bg-white shadow-sm sm:rounded-lg p-6 text-center">
                <h3 class="text-xl font-semibold mb-4">Ready to travel?</h3>
                <a href="{{ route('trips.search') }}"
                    class="inline-block bg-indigo-600 hover:bg-indigo-700 text-white font-bold px-6 py-3 rounded">
                    Search Your Trips
                </a>
            </div>

            {{-- My Bookings --}}
            <div class="bg-white shadow-sm sm:rounded-lg p-6 text-center">
                <h3 class="text-xl font-semibold mb-4">View your bookings!</h3>
                <a href="{{ route('bookings.list') }}"
                    class="inline-block bg-indigo-600 hover:bg-indigo-700 text-white font-bold px-6 py-3 rounded">
                    My Bookings
                </a>
            </div>

            {{-- Show Available Trips --}}
            @if($trips->count())
                <div class="bg-white shadow-sm sm:rounded-lg p-6">
                    <h3 class="text-xl font-semibold mb-6 text-center">Available Trips</h3>

                    @foreach($trips as $trip)
                        <div class="border p-4 rounded mb-4">
                            <p><strong>From:</strong> {{ $trip->origin }}</p>
                            <p><strong>To:</strong> {{ $trip->destination }}</p>
                            <p><strong>Date:</strong> {{ \Carbon\Carbon::parse($trip->travel_date)->format('M d, Y') }}</p>
                            <p><strong>Time:</strong> {{ \Carbon\Carbon::parse($trip->travel_time)->format('h:i A') }}</p>
                            <p><strong>Price:</strong> ₱{{ number_format($trip->price, 2) }}</p>
                            <p><strong>Seats:</strong> {{ $trip->seats_available }}</p>


                        </div>
                    @endforeach
                </div>
            @else
                <p class="text-center text-gray-500">No trips available at the moment.</p>
            @endif
{{-- Show error message if form failed --}}
@if(session('error_trip_id') == $trip->id)
    <div class="bg-red-100 text-red-800 p-2 rounded mb-2 text-center font-semibold">
        {{ session('error_message') }}
    </div>
@endif


        </div>
    </div>
</x-app-layout>
