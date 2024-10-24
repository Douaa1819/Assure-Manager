<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<!-- Header -->
<header class="bg-white shadow-md">
    <div class="container mx-auto flex justify-between items-center py-4">
        <a href="/" class="text-2xl font-bold text-indigo-600">AssureNow</a>
        <nav>
            <a href="/login" class="text-gray-700 hover:text-indigo-600 px-4">Connexion</a>
            <a href="/signup" class="text-gray-700 hover:text-indigo-600 px-4">Inscription</a>
        </nav>
    </div>
</header>


<section class="py-16">
    <div class="container mx-auto bg-white p-8 rounded-lg shadow-lg max-w-4xl">
        <h2 class="text-3xl font-bold text-gray-800 mb-8 text-center">Assurance Habitation</h2>

        <div class="mb-8">
            <h3 class="text-2xl font-bold section-title mb-4">Pourquoi opter pour cette couverture ?</h3>
            <div class="image-container mb-4">
                <img src="https://aisins.ca/wp-content/uploads/2023/04/Home-Insurance.jpg" alt="Home Insurance" class="rounded-lg">
            </div>
            <p class="text-gray-700 mb-4">
                Opter pour notre couverture habitation vous permet de bénéficier d'une protection complète pour votre propriété et vos biens précieux. Que ce soit pour des dommages causés par des intempéries, des vols, ou d'autres imprévus, nous avons des solutions adaptées à vos besoins.
            </p>
        </div>


        <div class="mb-8">
            <ul class="flex justify-around">
                <li class="step-title font-bold text-gray-600 step-active">Vos Informations</li>
                <li class="step-title font-bold text-gray-600">Votre Propriété</li>
                <li class="step-title font-bold text-gray-600">Votre Simulation</li>
            </ul>
        </div>


        <form id="insurance-form" class="space-y-6">

            <div id="step-1" class="step step-active">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Vos Informations</h3>
                <div class="grid gap-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Nom Complet</label>
                        <input type="text" name="full_name" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Adresse E-mail</label>
                        <input type="email" name="email" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Numéro de Téléphone</label>
                        <input type="text" name="phone_number" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" required>
                    </div>
                </div>
            </div>


            <div id="step-2" class="step hidden">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Votre Propriété</h3>
                <div class="grid gap-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Type de Propriété</label>
                        <select name="property_type" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
                            <option value="apartment">Appartement</option>
                            <option value="house">Maison</option>
                        </select>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Valeur de la Propriété</label>
                        <input type="number" name="property_value" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500" placeholder="ex. 200,000 USD" required>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Zone à Risque Élevé</label>
                        <select name="risk_zone" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
                            <option value="yes">Oui</option>
                            <option value="no">Non</option>
                        </select>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Système de Sécurité</label>
                        <select name="security_system" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500">
                            <option value="yes">Oui</option>
                            <option value="no">Non</option>
                        </select>
                    </div>
                </div>
            </div>


            <div id="step-3" class="step hidden">
                <h3 class="text-xl font-bold text-gray-700 mb-4">Votre Simulation</h3>
                <div class="space-y-4">
                    <p class="text-gray-700">Voici votre prix estimé basé sur les informations fournies.</p>
                    <div class="flex justify-between text-gray-700">
                        <span>Base (300 USD):</span> <span id="base-price">300 USD</span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Type de Propriété:</span> <span id="type-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Zone à Risque Élevé:</span> <span id="risk-price"></span>
                    </div>
                    <div class="flex justify-between text-gray-700">
                        <span>Système de Sécurité:</span> <span id="security-price"></span>
                    </div>
                    <div class="flex justify-between font-bold text-gray-800">
                        <span>Prix Total Estimé:</span> <span id="total-price"></span>
                    </div>
                </div>
            </div>


            <div class="flex justify-between">
                <button type="button" id="prevBtn" class="bg-gray-300 text-gray-700 px-6 py-2 rounded-lg hidden">Précédent</button>
                <button type="button" id="nextBtn" class="bg-indigo-600 text-white px-6 py-2 rounded-lg">Suivant</button>
            </div>
        </form>
    </div>
</section>

<!-- Footer -->
<footer class="bg-gray-800 text-white py-8">
    <div class="container mx-auto text-center">
        <p>&copy; 2024 AssureNow. Tous droits réservés.</p>
    </div>
</footer>

<script>
    let currentStep = 1;
    const totalSteps = 3;

    const steps = document.querySelectorAll(".step");
    const nextBtn = document.getElementById("nextBtn");
    const prevBtn = document.getElementById("prevBtn");

    nextBtn.addEventListener("click", () => {
        if (currentStep < totalSteps) {
            steps[currentStep - 1].classList.add("hidden");
            steps[currentStep].classList.remove("hidden");
            currentStep++;
        }

        if (currentStep === totalSteps) {
            nextBtn.innerText = "Soumettre";
            // simulatePrice(); // Calculate price at the last step
        }

        prevBtn.classList.remove("hidden");
    });

    prevBtn.addEventListener("click", () => {
        if (currentStep > 1) {
            steps[currentStep - 1].classList.add("hidden");
            steps[currentStep - 2].classList.remove("hidden");
            currentStep--;
        }

        if (currentStep === 1) {
            prevBtn.classList.add("hidden");
            nextBtn.innerText = "Suivant";
        }
    });

    function simulatePrice() {
        // Implement your logic to calculate prices based on user input
        const propertyType = document.querySelector('select[name="property_type"]').value;
        const riskZone = document.querySelector('select[name="risk_zone"]').value;
        const securitySystem = document.querySelector('select[name="security_system"]').value;

        let typePrice = 0, riskPrice = 0, securityPrice = 0;

        if (propertyType === 'house') {
            typePrice = 100; // example value
        }

        if (riskZone === 'yes') {
            riskPrice = 50; // example value
        }

        if (securitySystem === 'yes') {
            securityPrice = -30; // example value (discount)
        }

        const basePrice = 300;
        const totalPrice = basePrice + typePrice + riskPrice + securityPrice;

        document.getElementById('type-price').innerText = typePrice + ' USD';
        document.getElementById('risk-price').innerText = riskPrice + ' USD';
        document.getElementById('security-price').innerText = securityPrice + ' USD';
        document.getElementById('total-price').innerText = totalPrice + ' USD';
    }

    document.getElementById("step-3").addEventListener("input", simulatePrice);
</script>
</body>
</html>
