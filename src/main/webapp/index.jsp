<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">


<header class="bg-white shadow-md">
    <div class="container mx-auto flex justify-between items-center py-4">
        <a href="/" class="text-2xl font-bold text-indigo-600">AssureManager</a>
        <nav>
            <a href="/login" class="text-gray-700 hover:text-indigo-600 px-4">Login</a>
            <a href="/register" class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-500">Sign Up</a>
        </nav>
    </div>
</header>


<section class="bg-cover bg-center h-screen text-white" style="background-image: url('https://www.mf.gov.dz/images/assurancesaffinitaires.jpg');">
    <div class="bg-black bg-opacity-50 h-full flex flex-col justify-center items-center text-center">
        <h1 class="text-4xl md:text-6xl font-bold mb-6">Secure Your Future with AssureManager</h1>
        <p class="text-lg md:text-2xl mb-8">Providing peace of mind with the best insurance plans tailored to your needs.</p>
        <a href="/register" class="bg-indigo-600 px-6 py-3 rounded text-lg font-medium hover:bg-indigo-500">Get Started</a>
    </div>
</section>


<section class="py-16">
    <div class="container mx-auto text-center">
        <h2 class="text-3xl font-bold text-gray-800 mb-8">Our Services</h2>
        <div class="grid md:grid-cols-3 gap-8">

            <div class="bg-white shadow-lg rounded-lg p-6">
                <img src="https://www.argusdelassurance.com/mediatheque/6/3/8/000161836_896x598_c.png" alt="Car Insurance" class="w-full h-48 object-cover rounded-t-lg mb-4">
                <h3 class="text-xl font-bold text-indigo-600 mb-2">Car Insurance</h3>
                <p class="text-gray-700 mb-4">Comprehensive coverage that keeps you and your vehicle safe on the road.</p>
                <a href="/login" class="text-indigo-600 font-bold hover:underline">Get your quote</a>
            </div>

            <div class="bg-white shadow-lg rounded-lg p-6">
                <img src="https://st.depositphotos.com/1637787/2578/i/450/depositphotos_25784359-stock-photo-home-insurance-concept.jpg" alt="Home Insurance" class="w-full h-48 object-cover rounded-t-lg mb-4">
                <h3 class="text-xl font-bold text-indigo-600 mb-2">Home Insurance</h3>
                <p class="text-gray-700 mb-4">Protect your home and belongings with our reliable home insurance plans.</p>
                <a href="/login" class="text-indigo-600 font-bold hover:underline">Get your quote</a>
            </div>

            <div class="bg-white shadow-lg rounded-lg p-6">
                <img src="https://mortgageadviceservices.co.uk/wp-content/uploads/2021/07/Depositphotos_222673112_s-2019.jpg" alt="Life Insurance" class="w-full h-48 object-cover rounded-t-lg mb-4">
                <h3 class="text-xl font-bold text-indigo-600 mb-2">Life Insurance</h3>
                <p class="text-gray-700 mb-4">Secure your loved ones' future with our comprehensive life insurance plans.</p>
                <a href="/login" class="text-indigo-600 font-bold hover:underline">Get your quote</a>
            </div>
        </div>
    </div>
</section>


<section class="bg-gray-800 text-white py-16">
    <div class="container mx-auto text-center">
        <h2 class="text-4xl font-bold mb-4">Ready to Protect What Matters Most?</h2>
        <p class="text-lg mb-8">Sign up today and discover the best insurance plans to suit your needs.</p>
        <a href="/register" class="bg-white text-gray-600 px-6 py-3 rounded-lg font-bold hover:bg-gray-200">Join Us Now</a>
    </div>
</section>


<footer class=" mx-15 bg-indigo-900 text-white py-8">
    <div class="container mx-auto text-center">
        <p>&copy; 2024 AssureManager. All Rights Reserved.</p>
        <div class="mt-4">
            <a href="#" class="text-indigo-400 hover:text-white px-2">Privacy Policy</a>
            <a href="#" class="text-indigo-400 hover:text-white px-2">Terms of Service</a>
            <a href="#" class="text-indigo-400 hover:text-white px-2">Contact Us</a>
        </div>
    </div>
</footer>

</body>
</html>
