<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Quotes</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>

        .hidden { display: none; }
        .step-active { display: block; }
    </style>
</head>
<body class="bg-gray-100">

<header class="bg-white shadow-md">
    <div class="container mx-auto flex justify-between items-center py-4">
        <a href="/" class="text-2xl font-bold text-indigo-600">InsureNow</a>
        <nav>
            <a href="/login" class="text-gray-700 hover:text-indigo-600 px-4">Login</a>
            <a href="/signup" class="text-gray-700 hover:text-indigo-600 px-4">Sign Up</a>
        </nav>
    </div>
</header>

<section class="py-16">
    <div class="container mx-auto bg-white p-8 rounded-lg shadow-lg max-w-4xl">
        <h2 class="text-xl font-bold text-gray-700 mb-4">Car Insurance</h2>
        <div class="grid gap-4">
            <div class="mb-8">
                <h3 class="text-2xl font-bold section-title mb-4">Why Choose This Car Coverage?</h3>
                <div class="image-container mb-4">
                    <img src="https://static1.caroom.fr/blog/wp-content/uploads/2023/09/assurance-auto-1500x643.jpg" alt="Car Insurance" class="rounded-lg">
                </div>
                <p class="text-gray-700 mb-4">
                    Choosing our car insurance provides you with comprehensive coverage for your vehicle and peace of mind. Whether it's for damages caused by accidents, theft, or other unexpected events, we have tailored solutions to meet your needs.
                </p>
            </div>
            <div>

        <div class="mb-8">
            <ul class="flex justify-around">
                  <li class="step-title font-bold text-gray-600 step-active">Your Information</li>
                <li class="step-title font-bold text-gray-600">Your Vehicle</li>
                <li class="step-title font-bold text-gray-600">Your Simulation</li>
            </ul>

        </div>

        <!-- Form Steps -->
        <form  action="/insurances/car" method="POST" id="insurance-form" class="space-y-6">
            <div id="step-1" class="step step-active">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Your Information</h3>
                <div class="grid gap-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Full Name</label>
                        <input type="text" name="full_name" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Email Address</label>
                        <input type="email" name="email" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Phone Number</label>
                        <input type="text" name="phone_number" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                </div>
            </div>

            <!--  Car Insurance -->
            <div id="step-2" class="step hidden">

                        <label class="block text-sm font-medium text-gray-700">Driver Age</label>
                        <input type="number" name="driver_age" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Vehicle Type</label>
                        <input type="text" name="vehicle_type" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" placeholder="e.g. Sedan, SUV" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Vehicle Usage</label>
                        <select name="vehicle_usage" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                            <option value="private">Private</option>
                            <option value="professional">Professional</option>
                        </select>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Driving History (years without claims)</label>
                        <input type="number" name="driving_history" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                </div>
            </div>

            <!--  Home Insurance -->
            <div id="step-3" class="step hidden">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Home Insurance</h3>
                <div class="grid gap-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Type of Property</label>
                        <select name="property_type" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                            <option value="apartment">Apartment</option>
                            <option value="house">House</option>
                        </select>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Property Value</label>
                        <input type="number" name="property_value" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" placeholder="e.g. 200,000 USD" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Location (High-Risk Zone)</label>
                        <select name="risk_zone" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Security System</label>
                        <select name="security_system" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                            <option value="yes">Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                </div>
            </div>

            <!--  Your Simulation -->
            <div id="step-4" class="step hidden">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Your Simulation</h3>
                <div class="space-y-4">
                    <p class="text-gray-700">Here is your estimated price based on the information provided.</p>
                    <div class="flex justify-between text-gray-700">
                        <span>Base Price for Car Insurance (500 MAD):</span> <span id="car-base-price">500 MAD</span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Age Adjustment:</span> <span id="car-age-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Vehicle Type Adjustment:</span> <span id="car-type-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Usage Adjustment:</span> <span id="car-usage-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Driving History Adjustment:</span> <span id="car-history-price"></span>
                    </div>
                    <div class="flex justify-between font-bold text-gray-800">
                        <span>Total Estimated Car Insurance Price:</span> <span id="total-car-price"></span>
                    </div>

                    <hr class="my-4">

                    <p class="text-gray-700">Here is your estimated price for home insurance:</p>
                    <div class="flex justify-between text-gray-700">
                        <span>Base Price for Home Insurance (400 MAD):</span> <span id="home-base-price">400 MAD</span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Property Value Adjustment:</span> <span id="home-value-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>High-Risk Zone Adjustment:</span> <span id="home-risk-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Security System Adjustment:</span> <span id="home-security-price"></span>
                    </div>
                    <div class="flex justify-between font-bold text-gray-800">
                        <span>Total Estimated Home Insurance Price:</span> <span id="total-home-price"></span>
                    </div>
                </div>
            </div>

            <!-- Navigation Buttons -->
            <div class="flex justify-between">
                <button type="button" class="btn-prev bg-indigo-600 text-white py-2 px-4 rounded-md">Previous</button>
                <button type="button" class="btn-next bg-indigo-600 text-white py-2 px-4 rounded-md">Next</button>
            </div>
        </form>
    </div>
</section>

<!-- Footer -->
<footer class="bg-white shadow-md py-4">
    <div class="container mx-auto text-center">
        <p class="text-gray-600">&copy; 2024 InsureNow. All rights reserved.</p>
    </div>
</footer>

<script>
    const steps = document.querySelectorAll('.step');
    const nextButtons = document.querySelectorAll('.btn-next');
    const prevButtons = document.querySelectorAll('.btn-prev');

    let currentStep = 0;

    function updateStepVisibility() {
        steps.forEach((step, index) => {
            step.classList.toggle('hidden', index !== currentStep);
            step.classList.toggle('step-active', index === currentStep);
        });
    }

    nextButtons.forEach(button => {
        button.addEventListener('click', () => {
            if (currentStep < steps.length - 1) {
                currentStep++;
                updateStepVisibility();
            }
        });
    });

    prevButtons.forEach(button => {
        button.addEventListener('click', () => {
            if (currentStep > 0) {
                currentStep--;
                updateStepVisibility();
            }
        });
    });

    updateStepVisibility();
</script>

</body>
</html>
