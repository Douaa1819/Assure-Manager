<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMJHjWVj36eEjpGsW3j53H+1H7RzIqg7/5PzdJ" crossorigin="anonymous" />
    <title>Register</title>
</head>
<body class="bg-gray-100">
<div class="flex w-full max-w-md mx-auto overflow-hidden bg-white rounded-lg shadow-lg dark:bg-gray-800 mt-10 lg:max-w-4xl">
    <div class="hidden bg-cover lg:block lg:w-1/2" style="background-image: url('https://aainform.co.za/wp-content/uploads/2023/05/vr-icons-illustrating-coverage-policy-insurance-family-life-travel-health-bank-house-scaled.jpg');"></div>
    <div class="w-full px-6 py-8 md:px-8 lg:w-1/2">
        <h2 class="text-2xl font-bold text-center text-gray-800 dark:text-gray-200">
            <i class="fas fa-user-plus"></i> Register
        </h2>

        <form action="/register" method="POST" class="mt-4" onsubmit="return validateForm()">

            <div class="mt-4">
                <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="name">Name</label>
                <input id="name" name="name" required
                       class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                          dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                          focus:border-blue-400 focus:ring-opacity-40
                          dark:focus:border-blue-300 focus:outline-none focus:ring
                          focus:ring-blue-300"
                       type="text" placeholder="Enter your name" />
            </div>

            <div class="mt-4">
                <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="email">Email Address</label>
                <input id="email" name="email" required
                       class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                          dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                          focus:border-blue-400 focus:ring-opacity-40
                          dark:focus:border-blue-300 focus:outline-none focus:ring
                          focus:ring-blue-300"
                       type="email" placeholder="Enter your email" />
            </div>

            <div class="mt-4">
                <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="password">Password</label>
                <input id="password" name="password" required
                       class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                          dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                          focus:border-blue-400 focus:ring-opacity-40
                          dark:focus:border-blue-300 focus:outline-none focus:ring
                          focus:ring-blue-300"
                       type="password" placeholder="Enter your password" />
                <div id="password-strength" class="text-sm text-red-500 mt-1 hidden">Weak Password</div>
            </div>

            <div class="mt-4">
                <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="confirm-password">Confirm Password</label>
                <input id="confirm-password" name="confirm-password" required
                       class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                          dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                          focus:border-blue-400 focus:ring-opacity-40
                          dark:focus:border-blue-300 focus:outline-none focus:ring
                          focus:ring-blue-300"
                       type="password" placeholder="Confirm your password" />
            </div>

            <div class="mt-6">
                <button class="w-full px-6 py-3 text-sm font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-gray-800 rounded-lg hover:bg-gray-700 focus:outline-none focus:ring focus:ring-gray-300 focus:ring-opacity-50" type="submit">
                    Register
                </button>
            </div>

            <div class="flex items-center justify-between mt-4">
                <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
                <a href="/login" class="text-xs text-gray-500 uppercase dark:text-gray-400 hover:underline">or sign in</a>
                <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
            </div>
        </form>
    </div>
</div>

<script>
    function validateForm() {
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirm-password").value;
        const passwordStrength = document.getElementById("password-strength");

        if (password !== confirmPassword) {
            passwordStrength.classList.remove("hidden");
            passwordStrength.textContent = "Passwords do not match!";
            return false;
        } else {
            passwordStrength.classList.add("hidden");
        }
        return true;
    }
</script>
</body>
</html>
