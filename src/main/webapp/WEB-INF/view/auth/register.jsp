<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Register</title>
</head>
<body class="bg-gray-100">
<div class="flex w-full max-w-md mx-auto overflow-hidden bg-white rounded-lg shadow-lg dark:bg-gray-800 mt-10 lg:max-w-4xl">
    <div class="hidden bg-cover lg:block lg:w-1/2" style="background-image: url('https://aainform.co.za/wp-content/uploads/2023/05/vr-icons-illustrating-coverage-policy-insurance-family-life-travel-health-bank-house-scaled.jpg');"></div>
    <div class="w-full px-6 py-8 md:px-8 lg:w-1/2">
        <h2 class="text-2xl font-bold text-center text-gray-800 dark:text-gray-200">Register</h2>

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
                <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="address">Address</label>
                <input id="address" name="address" required
                       class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                          dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                          focus:border-blue-400 focus:ring-opacity-40
                          dark:focus:border-blue-300 focus:outline-none focus:ring
                          focus:ring-blue-300"
                       type="text" placeholder="Enter your address" />
            </div>

            <div class="mt-4">
                <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="phoneNumber">Phone Number</label>
                <input id="phoneNumber" name="phoneNumber" required
                       class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                          dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                          focus:border-blue-400 focus:ring-opacity-40
                          dark:focus:border-blue-300 focus:outline-none focus:ring
                          focus:ring-blue-300"
                       type="tel" placeholder="Enter your phone number" />
            </div>

            <div class="mt-6">
                <button type="submit"
                        class="w-full px-6 py-3 text-sm font-medium tracking-wide text-white capitalize
                           transition-colors duration-300 transform  bg-gray-800 rounded-lg
                           hover:bg-gray-900 focus:outline-none focus:ring focus:ring-blue-300
                           focus:ring-opacity-50">
                    Register
                </button>
            </div>
        </form>

        <div class="flex items-center justify-between mt-4">
            <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
            <a href="/login" class="text-xs text-gray-500 uppercase dark:text-gray-400 hover:underline">or sign in</a>
            <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
        </div>
    </div>
</div>

<script>
    const passwordInput = document.getElementById('password');
    const strengthText = document.getElementById('password-strength');

    passwordInput.addEventListener('input', () => {
        const value = passwordInput.value;
        if (value.length < 6) {
            strengthText.textContent = 'Weak Password';
            strengthText.classList.remove('hidden');
            strengthText.classList.remove('text-green-500');
            strengthText.classList.add('text-red-500');
        } else {
            strengthText.textContent = 'Strong Password';
            strengthText.classList.remove('hidden');
            strengthText.classList.remove('text-red-500');
            strengthText.classList.add('text-green-500');
        }
    });

    // Form Validation
    function validateForm() {
        const email = document.getElementById('email').value;
        const phoneNumber = document.getElementById('phoneNumber').value;

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        const phoneRegex = /^\+?[1-9]\d{1,14}$/;

        if (!emailRegex.test(email)) {
            alert('Please enter a valid email address.');
            return false;
        }
        if (!phoneRegex.test(phoneNumber)) {
            alert('Please enter a valid phone number.');
            return false;
        }
        return true;
    }
</script>
</body>
</html>
