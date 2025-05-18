<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carousel Questions</title>
    <style>
       
        .questions-container {
            max-width: 800px;
            margin: 0 auto;
            padding-top: 30px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .question-item {
            border-bottom: 1px solid #e0e0e0;
        }
        .question-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .question-header:hover {
            background-color: #f5f5f5;
        }
        .question-content {
            display: none;
            padding: 15px;
            background-color: #f9f9f9;
        }
        .dropdown-icon {
            transition: transform 0.3s ease;
        }
        .active .dropdown-icon {
            transform: rotate(180deg);
        }
    </style>
</head>
<body>
    <div class="questions-container">
        <%
            // Sample questions array - you can populate this dynamically
            String[][] questions = {
                {"What healthcare services are available at our hospital?", "We offer a comprehensive range of services including outpatient care, emergency treatment, inpatient admissions, surgeries, maternity care, and chronic disease management."},
                {"How can I register as a new patient?", "You can register through our online portal by providing basic personal details. Once registered, you’ll be able to log in and manage your profile, view appointments, and more."},
                {"What kind of doctors are available at the hospital?", "Our hospital has experienced doctors across various specialties including cardiology, orthopedics, neurology, pediatrics, and more. You can find and book a doctor via our portal."},
                {"Do you have trained nurses available at all times?", "Yes, we have a team of professionally trained nurses available round the clock to assist with patient care and provide medical support."},
                {"What pathology services are offered?", "We provide comprehensive pathology services including blood tests, X-ray, CT scan, and ultrasound. Reports are digitally accessible through your patient account."},
            };
        %>

        <% for(String[] question : questions) { %>
            <div class="question-item">
                <div class="question-header">
                    <%= question[0] %>
                    <span class="dropdown-icon">▼</span>
                </div>
                <div class="question-content">
                    <%= question[1] %>
                </div>
            </div>
        <% } %>
    </div>

    <script>
        document.querySelectorAll('.question-header').forEach(header => {
            header.addEventListener('click', () => {
                const questionItem = header.closest('.question-item');
                const content = questionItem.querySelector('.question-content');
                
                // Toggle current item
                questionItem.classList.toggle('active');
                content.style.display = 
                    content.style.display === 'block' ? 'none' : 'block';
                
                // Close other open items
                document.querySelectorAll('.question-item').forEach(item => {
                    if (item !== questionItem) {
                        item.classList.remove('active');
                        item.querySelector('.question-content').style.display = 'none';
                    }
                });
            });
        });
    </script>
</body>
</html>