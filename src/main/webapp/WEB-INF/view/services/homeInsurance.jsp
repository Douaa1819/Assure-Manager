<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assurance Habitation</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .hidden { display: none; }
        .step-active { display: block; }
        .section-title { color: #4c51bf; }
        .image-container { height: 300px; }
        .image-container img { height: 100%; width: 100%; object-fit: cover; }
    </style>
</head>
<body class="bg-gray-100">
<%
    String successMessage = (String) request.getAttribute("success");
    String errorMessage = (String) request.getAttribute("error");
%>

<div class="container mx-auto">
    <c:if test="${not empty successMessage}">
    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative" role="alert">
        <strong class="font-bold">Success!</strong>
        <span class="block sm:inline">${successMessage}</span>
    </div>
    </c:if>

    <c:if test="${not empty errorMessage}">
    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
        <strong class="font-bold">Error!</strong>
        <span class="block sm:inline">${errorMessage}</span>
    </div>
    </c:if>

    <!-- Header -->
    <header class="bg-white shadow-md">
        <div class="container mx-auto flex justify-between items-center py-4">
            <a href="/" class="text-2xl font-bold text-indigo-600">AssureNow</a>
            <nav>
                <a href="/logout" class="text-gray-700 hover:text-indigo-600 px-4">Logout</a>
            </nav>
        </div>
    </header>

    <section class="py-16">
        <div class="container mx-auto bg-white p-8 rounded-lg shadow-lg max-w-4xl">
            <h2 class="text-3xl font-bold text-gray-800 mb-8 text-center">Home Insurance</h2>

            <div class="mb-8">
                <h3 class="text-2xl font-bold section-title mb-4">Why choose this cover?</h3>
                <div class="image-container mb-4">
                    <img src="https://aisins.ca/wp-content/uploads/2023/04/Home-Insurance.jpg" alt="Home Insurance" class="rounded-lg">
                </div>
                <p class="text-gray-700 mb-4">
                    Opting for our home insurance coverage gives you comprehensive protection for your property and valuable possessions. Whether it's damage caused by bad weather, theft or other unforeseen events, we have solutions to suit your needs.
                </p>
            </div>

            <form action="/insurances/home" method="POST" id="insurance-form" class="space-y-6">

                <input type="hidden" name="insurance_type" value="HABITATION">

                <!-- Property Details -->
                <div id="step-1" class="step step-active">
                    <h3 class="text-xl font-bold text-gray-700 mb-4">Your Property</h3>
                    <div class="grid gap-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700">Property Type</label>
                            <select name="property_type" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
                                <option value="APARTMENT">Apartment</option>
                                <option value="HOME">House</option>
                            </select>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700">Property Value (Base : 300 MAD)</label>
                            <input type="number" name="property_value" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" placeholder="e.g. 200,000 USD" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700">Location</label>
                            <input type="text" name="location" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" placeholder="enter your location" required>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700">High-Risk Zone</label>
                            <select name="high_risk_zone" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700">Security System</label>
                            <input name="security-system" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                        </div>
                    </div>
                </div>
                <div class="flex justify-between mt-4">
                    <button type="button" id="next-step" class="bg-indigo-600 text-white px-6 py-2 rounded-lg">Next</button>
                </div>
            </form>

            <!-- Estimation -->
            <div id="step-2" class="step hidden">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Your Estimation</h3>
                <div class="space-y-4">
                    <p class="text-gray-700">Here is your estimated price based on the provided information.</p>
                    <div class="flex justify-between text-gray-700">
                        <span>Base (300 USD):</span> <span id="base-price">300 USD</span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Property Type:</span> <span id="type-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>High-Risk Zone:</span> <span id="risk-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Security System:</span> <span id="security-price"></span>
                    </div>
                    <div class="flex justify-between font-bold text-gray-800">
                        <span>Total Estimated Price:</span> <span id="total-price"></span>
                    </div>
                </div>
                <div class="flex justify-between mt-4">
                    <button type="button" id="accept-quote" class="bg-green-500 text-white px-6 py-2 rounded-lg">Accept Quote</button>
                    <button type="button" id="back-to-step1" class="bg-red-500 text-white px-6 py-2 rounded-lg">Back</button>
                </div>
            </div>

            <!-- Contract Acceptance -->
            <div id="step-3" class="step hidden">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Contract Details</h3>
                <div class="grid gap-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Start Date</label>
                        <input type="date" name="start_date" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">End Date</label>
                        <input type="date" name="end_date" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div class="text-right">
                        <button type="submit" class="bg-green-500 text-white px-6 py-2 rounded-lg">Accept</button>
                        <button type="button" class="bg-red-500 text-white px-6 py-2 rounded-lg" onclick="goBackToEstimate()">Refuse</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-8">
        <div class="container mx-auto text-center">
            <p>&copy; 2024 AssureNow. All rights reserved.</p>
        </div>
    </footer>

    <script>
        document.getElementById('next-step').addEventListener('click', function () {
            // Step 1 to Step 2
            const propertyType = document.querySelector('[name="property_type"]').value;
            const highRiskZone = document.querySelector('[name="high_risk_zone"]').value;
            const securitySystem = document.querySelector('[name="security-system"]').value;

            let typePrice = 0;
            if (propertyType === 'APARTMENT') typePrice = 100;
            if (propertyType === 'HOME') typePrice = 200;

            let riskPrice = highRiskZone === 'yes' ? 150 : 0;
            let securityPrice = securitySystem ? -50 : 0;

            let totalPrice = 300 + typePrice + riskPrice + securityPrice;

            document.getElementById('type-price').innerText = typePrice + ' USD';
            document.getElementById('risk-price').innerText = riskPrice + ' USD';
            document.getElementById('security-price').innerText = securityPrice + ' USD';
            document.getElementById('total-price').innerText = totalPrice + ' USD';

            showStep(2);
        });

        document.getElementById('back-to-step1').addEventListener('click', function () {
            showStep(1);
        });

        document.getElementById('accept-quote').addEventListener('click', function () {
            showStep(3);
        });

        function showStep(step) {
            const steps = document.querySelectorAll('.step');
            steps.forEach((s) => s.classList.add('hidden'));
            document.getElementById('step-' + step).classList.remove('hidden');
        }

        function goBackToEstimate() {
            showStep(2);
        }
    </script>

</body>
</html>
