<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>MediCare Footer</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
        <style>
            :root {
                --main-color: #003087;
                --accent-color: #54d2f4;
                --white: #ffffff;
            }

            body {
                margin: 0;
                font-family: 'Segoe UI', sans-serif;
                background-color: #fff;
            }

            .footer {
                background-color: var(--main-color);
                color: var(--white);
                padding: 50px 20px 30px;
            }

            .footer-container {
                max-width: 800px;
                margin: auto;
                text-align: center;
            }

            .footer h3 {
                color: var(--accent-color);
                font-size: 26px;
                margin-bottom: 20px;
            }

            .footer .info-item {
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 10px 0;
                font-size: 16px;
            }

            .footer .info-item i {
                color: var(--accent-color);
                margin-right: 10px;
                font-size: 18px;
                min-width: 20px;
            }

            .footer-bottom {
                margin-top: 40px;
                border-top: 1px solid var(--accent-color);
                padding-top: 15px;
                font-size: 14px;
                color: var(--white);
            }

            .footer-bottom a {
                color: var(--accent-color);
                margin: 0 12px;
                text-decoration: none;
            }

            .footer-bottom a:hover {
                text-decoration: underline;
            }

            @media (max-width: 600px) {
                .footer h3 {
                    font-size: 20px;
                }

                .footer .info-item {
                    font-size: 14px;
                }

                .footer-bottom {
                    font-size: 12px;
                }
            }
        </style>
    </head>

    <body>
        <footer class="footer">
            <div class="footer-container">
                <h3><i class="fas fa-hospital"></i> MediCare Hospital Center</h3>

                <div class="info-item"><i class="fas fa-heartbeat"></i>Excellence in Care, Powered by Compassion</div>
                <div class="info-item"><i class="fas fa-map-marker-alt"></i>456 Galle Road, Kandy 20000</div>
                <div class="info-item"><i class="fas fa-phone-alt"></i>Emergency:
                    <% String emergencyNumber="081 3456 789" ; out.print(emergencyNumber); %>
                </div>
                <div class="info-item"><i class="fas fa-envelope"></i>contact@medicarecenter.lk</div>

                <div class="footer-bottom">
                    <p>&copy; <%= java.time.Year.now() %> MediCare Hospital Center. All Rights Reserved.</p>
                    <a href="">Privacy Policy</a> |
                    <a href="">Terms of Use</a>
                </div>
            </div>
        </footer>
    </body>

    </html>