<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Clients') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <p>Here is your clients list!</p>
                    @foreach($clients as $client)
                        <div class="py-2 text-gray-900">
                            <p><b>Client ID: </b>{{ $client->id }}</p>
                            <p><b>Client Name: </b><span class="text-lg text-gray-500">{{ $client->name }}</span></p>
                            <p><b>Client Secret: </b>{{ $client->secret }}</p>
                            <p><b>Client Redirect Uri: </b>{{ $client->redirect }}</p>
                        </div>
                    @endforeach
                </div>
                <div class="mt-3 p-6 bg-white border-b border-gray-200">
                    <form id="form">
                        <div>
                            <x-label for="name">Name</x-label>
                            <x-input type="text" id="name" name="name" placeholder="Client Name"></x-input>
                        </div>
                        <div class="mt-2">
                            <x-label for="redirect">Redirect</x-label>
                            <x-input type="text" id="redirect" name="redirect"
                                     placeholder="https://url.com/callback"></x-input>
                        </div>
                        <div class="mt-2">
                            <x-button type="submit">Create Client</x-button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    @push('scripts')
        <script type="text/javascript">
            const form = document.getElementById('form');
            form.addEventListener('submit', function (e) {
                e.preventDefault();
                const data = {
                    name: document.getElementById("name").value,
                    redirect: document.getElementById("redirect").value,
                }

                axios.post('/oauth/clients', data)
                    .then(() => {location.href = "/dashboard/clients"})
                    .catch(response => {
                        console.log(response.message);
                    });
            });
        </script>
    @endpush
</x-app-layout>