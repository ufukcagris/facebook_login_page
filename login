<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            
             /* sayfa düzenini tam ortalamak için */
             display: flex;
             align-items: center;
             justify-content: center;

        }
        .container {
            width: 400px;
            margin: 50px auto; /* kutucuğun üst kısmındaki boşluğu azaltmak için */
            border: 1px solid #ddd;
            padding: 20px;
            background-color: white;
            border-radius: 10px; /* kutucukların köşelerini yuvarlak yapmak için */
            box-shadow: 0 0 10px rgba(0,0,0,0.1); /* kutucuklara gölge vermek için */
        }
        .logo {
            display: block;
            margin: 0 auto;
            width: 200px;
            position: relative; /* logoyu kutucuğun dışına çıkarmak için */
            top: -95px; /* logoyu daha yukarı kaydırmak için */
        }
        .form {
            
             /* formun üstündeki boşluğu kaldırmak için */
             margin-top: -70;

        }
        .form input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            padding: 15px;
            border: 1px solid #dddfe2;
            border-radius: 5px; /* inputların köşelerini yuvarlak yapmak için */
        }
        .form button {
            display: block;
		cursor: pointer;
            width: 100%;
            padding: 15px; /* Giriş Yap yazısını büyütmek için */
            border: none;
            background-color: #1877f2;
            color: white;
            font-weight: bold;
            font-size: 18px; /* Giriş Yap yazısını büyük yapmak için */
            border-radius: 5px; /* butonun köşelerini yuvarlak yapmak için */

             transition: all 0.3s ease-in-out; 
             box-shadow: inset 0 -3.5em 0 -0.35em rgba(0,0,0,0); 

        }  
        .form button:hover { 
          background-color:#0a4bc2; 
          box-shadow: inset 0 -3.5em 0 -0.35em rgba(255,255,255,0.2); 
        }
        .form a {
	              display: block;
            text-align: center;
            margin-top: 10px;
            color: #1877f2;
            
             
             font-size: 12px; 
             text-decoration:none;

        }
        .divider {
            margin-top: 20px;
            border-bottom: 1px solid #ddd; 
        }
        .signup {
          text-align:center; 
          margin-top:20px; 
        }
        .signup button {
            padding: 15px;
            border: none;
            background-color:#42b72a; 
            color:white;
            font-weight: bold;
            font-size: 16px; 
            border-radius: 5px;
		cursor: pointer; 
  
             transition: all 0.3s ease-in-out; /* yumuşak geçiş efekti vermek için */
             box-shadow: inset 0 -3.5em 0 -0.35em rgba(0,0,0,0); /* butona iç gölge vermek için */

        }
        .signup button:hover { /* butonun üzerine gelince rengi değiştirmek için */
          background-color:#2f8c1c; /* koyu yeşil renk vermek için */
          box-shadow: inset 0 -3.5em 0 -0.35em rgba(255,255,255,0.2); /* iç gölgeyi beyaz yapmak için */
        }

         /* Şifreyi göster tuşunu input un içine yerleştirmek ve daha modern bir görünüme dönüştürmek için eklenen stiller */
         .form i {
           position: absolute; /* i etiketini input un içine yerleştirmek için */
           right: 15px; /* i etiketini sağa yaslamak için */
           top: 50%; /* i etiketini dikey olarak ortalamak için */
           transform: translateY(-50%); /* i etiketini dikey olarak ortalamak için */
           cursor: pointer; /* i etiketine tıklandığında el işareti çıkması için */
           color: #1877f2; /* i etiketine mavi renk vermek için */
         }
         .form input[type="password"] {
           padding-right: 40px; 
         }
    </style>
    <script>
      // Şifreyi göster tuşunun işlevini tanımlamak için
      function showPassword() {
        // Şifre input unu ve i etiketini seçmek için
        var input = document.getElementById("password");
        var icon = document.getElementById("togglePassword");
        if (input.type === "password") {
          input.type = "text"; // Şifreyi göstermek için
          icon.className = "far fa-eye-slash"; // İkonu değiştirmek için
        } else {
          input.type = "password"; // Şifreyi gizlemek için
          icon.className = "far fa-eye"; // İkonu değiştirmek için
        }
      }
    </script>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<body>
    <div class="container">
        <img src="https://static.xx.fbcdn.net/rsrc.php/y8/r/dF5SId3UHWd.svg" alt="Facebook" class="logo">
        <div class="form">
            <input type="text" placeholder="E-posta adresi veya telefon numarası">
                        <!-- Şifre input unun içine i etiketi eklemek için -->
            <div style="position: relative;"> <!-- i etiketini input un içine yerleştirmek için -->
              <input type="password" placeholder="Şifre" name ="passwordNewUser" id="password" size="40" maxlength="40" class="form-control" required autofocus/>
              <i id="togglePassword" class="far fa-eye" onclick="showPassword()" style="margin-left: -30px; cursor: pointer;"></i> <!-- i etiketine onclick fonksiyonunu vermek için -->
            </div>
             <a href="https://www.facebook.com/login.php"><button>Giriş Yap</button></a>
             <a href="https://www.facebook.com/recover/initiate/">Şifreni mi unuttun?</a>   
        </div>
        <div class="divider"></div> 
        <div class="signup"> 
          <a href="https://www.facebook.com/r.php"><button>Yeni hesap oluştur</button></a>  
        </div>
    </div>
</body>
</html>
