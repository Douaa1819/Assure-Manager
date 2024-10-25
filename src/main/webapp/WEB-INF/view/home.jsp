<%--
  Created by IntelliJ IDEA.
  User: ycode
  Date: 22/10/2024
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Insurance Service</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

<!-- Header -->
<header class="bg-white shadow-md">
    <div class="container mx-auto flex justify-between items-center py-4">
        <a href="/" class="text-2xl font-bold text-indigo-600">AssureManager</a>
        <nav>
            <a href="/logout" class="text-gray-700 hover:text-indigo-600 px-4">Logout</a>
        </nav>
    </div>
</header>

<!-- Service Selection -->
<section class="py-16">
    <div class="container mx-auto text-center">
        <h2 class="text-4xl font-bold text-gray-800 mb-8">Select Your Insurance Service</h2>
        <div class="grid md:grid-cols-3 gap-8">
            <!-- Home Insurance -->
            <a href="/insurances/home" class="block bg-white shadow-lg rounded-lg p-6 hover:shadow-xl transition-shadow duration-300">
                <img src="https://st.depositphotos.com/1637787/2578/i/450/depositphotos_25784359-stock-photo-home-insurance-concept.jpg" alt="Home Insurance" class="w-full h-48 object-cover rounded-t-lg mb-4">
                <h3 class="text-xl font-bold text-indigo-600 mb-2">Home Insurance</h3>
                <p class="text-gray-700">Get comprehensive coverage for your home and belongings.</p>
                <p class="text-indigo-600 font-bold hover:underline">Get your quote</p>
            </a>


            <!-- Car Insurance -->
            <a href="/insurances/car" class="block bg-white shadow-lg rounded-lg p-6 hover:shadow-xl transition-shadow duration-300">
                <img src="https://www.argusdelassurance.com/mediatheque/6/3/8/000161836_896x598_c.png" alt="Car Insurance" class="w-full h-48 object-cover rounded-t-lg mb-4">
                <h3 class="text-xl font-bold text-indigo-600 mb-2">Car Insurance</h3>
                <p class="text-gray-700">Protect your vehicle with our reliable car insurance plans.</p>
                <p class="text-indigo-600 font-bold hover:underline">Get your quote</p>
            </a>


            <!-- Health Insurance -->
            <a href="/insurances/health" class="block bg-white shadow-lg rounded-lg p-6 hover:shadow-xl transition-shadow duration-300">
                <img src="https://mortgageadviceservices.co.uk/wp-content/uploads/2021/07/Depositphotos_222673112_s-2019.jpg" alt="Life Insurance" class="w-full h-48 object-cover rounded-t-lg mb-4">
                <h3 class="text-xl font-bold text-indigo-600 mb-2">Health Insurance</h3>
                <p class="text-gray-700">Secure your loved ones' future with our life insurance policies.</p>
                <p class="text-indigo-600 font-bold hover:underline">Get your quote</p>
            </a>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-gray-800 text-white py-8">
    <div class="container mx-auto text-center">
        <p>&copy; 2024 AssureManager. All Rights Reserved.</p>
    </div>
</footer>

</body>
</html>
