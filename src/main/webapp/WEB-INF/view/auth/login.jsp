<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMJHjWVj36eEjpGsW3j53H+1H7RzIqg7/5PzdJ" crossorigin="anonymous" />
    <title>Insurance Management - Sign In</title>
</head>
<body class="bg-gray-100">
<div class="flex w-full max-w-md mx-auto overflow-hidden bg-white rounded-lg shadow-lg dark:bg-gray-800 lg:max-w-4xl mt-20">
    <div class="hidden bg-cover lg:block lg:w-1/2" style="background-image: url('https://aainform.co.za/wp-content/uploads/2023/05/vr-icons-illustrating-coverage-policy-insurance-family-life-travel-health-bank-house-scaled.jpg');"></div>
    <div class="w-full px-6 py-8 md:px-8 lg:w-1/2">

        <h2 class="text-2xl font-bold text-center text-gray-700 dark:text-gray-200">
            <i class="fas fa-user-circle"></i> Welcome Back!
        </h2>

        <div class="flex items-center justify-between mt-6">
            <span class="w-1/5 border-b dark:border-gray-600 lg:w-1/4"></span>
            <a href="#" class="text-xs text-gray-500 uppercase dark:text-gray-400 hover:underline">or login with email</a>
            <span class="w-1/5 border-b dark:border-gray-400 lg:w-1/4"></span>
        </div>

        <form action="/login" method="post" class="mt-4">
            <div>
                <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="LoggingEmailAddress">Email Address</label>
                <input id="LoggingEmailAddress" name="email" class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600 focus:border-blue-400 focus:ring-opacity-40 dark:focus:border-blue-300 focus:outline-none focus:ring focus:ring-blue-300" type="email" required onkeyup="handleEmailInput(event)" />
            </div>

            <div class="mt-4">
                <div class="flex justify-between">
                    <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="loggingPassword">Password</label>
                    <a href="#" class="text-xs text-gray-500 dark:text-gray-300 hover:underline">Forgot Password?</a>
                </div>
                <input name="password" id="loggingPassword" class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600 focus:border-blue-400 focus:ring-opacity-40 dark:focus:border-blue-300 focus:outline-none focus:ring focus:ring-blue-300" type="password" required />
            </div>

            <div class="mt-6">
                <button class="w-full px-6 py-3 text-sm font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-gray-800 rounded-lg hover:bg-gray-700 focus:outline-none focus:ring focus:ring-gray-300 focus:ring-opacity-50" type="submit">
                    Sign In
                </button>
            </div>

            <div class="flex items-center justify-between mt-4">
                <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
                <a href="/register" class="text-xs text-gray-500 uppercase dark:text-gray-400 hover:underline">or sign up</a>
                <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
            </div>
        </form>

        <div class="mt-4 text-center text-gray-500">
            <p class="text-sm">You don't have an account? <a href="/register" class="text-blue-500 hover:underline">Sign Up</a></p>
        </div>
    </div>
</div>

<script>
    function validateEmail(email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }

    function handleEmailInput(event) {
        const emailInput = event.target;
        const emailValue = emailInput.value;

        if (!validateEmail(emailValue)) {
            emailInput.setCustomValidity("Please enter a valid email address.");
            emailInput.reportValidity();
        } else {
            emailInput.setCustomValidity("");
        }
    }
</script>
</body>
</html>
