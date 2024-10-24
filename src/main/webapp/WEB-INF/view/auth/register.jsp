<%--
  Created by IntelliJ IDEA.
  User: ycode
  Date: 24/10/2024
  Time: 01:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="flex w-full max-w-sm mx-auto overflow-hidden bg-white rounded-lg shadow-lg dark:bg-gray-800 lg:max-w-4xl">
    <div class="hidden bg-cover lg:block lg:w-1/2" style="background-image: url('https://les-charmilles.fr/wp-content/uploads/2023/10/assurance-1024x760-1.jpg');"></div>
        <%
    String success = request.getParameter("success");
    if (success != null) {
%>
    <div class="alert alert-success">Registration successful!</div>
        <%
    }
%>
    <div class="w-full px-6 py-8 md:px-8 lg:w-1/2">


        <p class="mt-3 text-xl text-center text-gray-600 dark:text-gray-200">
            Welcome
        </p>

        <div class="container mx-auto p-6">
            <h2 class="text-2xl font-bold text-center">Register</h2>

            <form action="/register" method="POST" class="mt-4">
                <!-- Name Field -->
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

                <!-- Email Field -->
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

                <!-- Password Field -->
                <div class="mt-4">
                    <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="password">Password</label>
                    <input id="password" name="password" required
                           class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                              dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                              focus:border-blue-400 focus:ring-opacity-40
                              dark:focus:border-blue-300 focus:outline-none focus:ring
                              focus:ring-blue-300"
                           type="password" placeholder="Enter your password" />
                </div>

                <!-- Address Field -->
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

                <!-- Phone Number Field -->
                <div class="mt-4">
                    <label class="block mb-2 text-sm font-medium text-gray-600 dark:text-gray-200" for="phoneNumber">Phone Number</label>
                    <input id="phoneNumber" name="phoneNumber"
                           class="block w-full px-4 py-2 text-gray-700 bg-white border rounded-lg
                              dark:bg-gray-800 dark:text-gray-300 dark:border-gray-600
                              focus:border-blue-400 focus:ring-opacity-40
                              dark:focus:border-blue-300 focus:outline-none focus:ring
                              focus:ring-blue-300"
                           type="text" placeholder="Enter your phone number" />
                </div>

                <!-- Submit Button -->
                <div class="mt-6">
                    <button type="submit"
                            class="w-full px-6 py-3 text-sm font-medium tracking-wide text-white capitalize
                               transition-colors duration-300 transform bg-gray-800 rounded-lg
                               hover:bg-gray-700 focus:outline-none focus:ring focus:ring-gray-300
                               focus:ring-opacity-50">
                        Register
                    </button>
                </div>
            </form>

            <div class="flex items-center justify-between mt-4">
                <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
                <a href="#" class="text-xs text-gray-500 uppercase dark:text-gray-400 hover:underline">or sign in</a>
                <span class="w-1/5 border-b dark:border-gray-600 md:w-1/4"></span>
            </div>
        </div>
</body>
</html>