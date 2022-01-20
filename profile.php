<?php
    session_start();
    include 'db.php';
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login"</script>';
    }

    $query = mysqli_query($conn, "SELECT * FROM tb_admin WHERE id_admin = '".$_SESSION['id']."' ");
    $d = mysqli_fetch_object($query);
    $kontak = mysqli_query($conn, "SELECT telp_admin, email_admin, address_admin FROM tb_admin WHERE id_admin = 1");
    $a = mysqli_fetch_object($kontak);

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            HANTU THRIFT
        </title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,400;1,300&display=swap" rel="stylesheet">
    </head>
    <body>
       <!--header-->
       <header>
           <div class="container">
                <h1><a href="dashboard">HANTU THRIFT</a></h1>
                <ul>
                    <li><a href="dashboard">Dashboard</a></li>
                    <li><a href="profile">Profile</a></li>
                    <li><a href="data-kategori">Data Kategori</a></li>
                    <li><a href="data-produk">Data Produk</a></li>
                    <li><a href="keluar">Keluar</a></li>
                </ul>
           </div>
       </header>

       <!-- Content -->
       <div class="section">
           <div class="container">
               <h3>Profile</h3>
               <div class="box">
                    <form action="" method="POST">
                        <input type="text" name="nama" placeholder="Nama Lengkap" class="input-control" value="<?php echo $d->name_admin ?>" required>
                        <input type="text" name="user" placeholder="Username" class="input-control" value="<?php echo $d->username ?>" required>
                        <input type="text" name="hp" placeholder="No HP" class="input-control" value="<?php echo $d->telp_admin ?>" required>
                        <input type="email" name="email" placeholder="Email" class="input-control" value="<?php echo $d->email_admin ?>" required>
                        <input type="text" name="alamat" placeholder="Alamat" class="input-control" value="<?php echo $d->address_admin ?>" required>
                        <input type="submit" name="submit" value="Ubah Profile" class="btn">
                    </form>  
                    <?php
                        if(isset($_POST['submit'])){
                            
                            $nama   = ucwords($_POST['nama']);
                            $user   = $_POST['user'];
                            $hp     = $_POST['hp'];
                            $email  = $_POST['email'];
                            $alamat = ucwords($_POST['alamat']);

                            $update = mysqli_query($conn, "UPDATE tb_admin SET
                                            name_admin      = '".$nama."',
                                            username        = '".$user."', 
                                            telp_admin      = '".$hp."',
                                            email_admin     = '".$email."',
                                            address_admin   = '".$alamat."' 
                                            WHERE id_admin  = '".$d->id_admin."' ");
                            if($update){
                                echo '<script>alert("Ubah Data Berhasil")</script>';
                                echo '<script>window.location="profile"</script>';
                            }else{
                                echo 'gagal '.mysqli_error($conn);
                            }

                        }
                    ?>
               </div>

               <h3>Ubah Password</h3>
               <div class="box">
                    <form action="" method="POST">
                        <input type="password" name="pass1" placeholder="Password Baru" class="input-control" required>
                        <input type="password" name="pass2" placeholder="Konfirmasi Password Baru" class="input-control" required>
                        <input type="submit" name="ubah_password" value="Ubah Password" class="btn">
                    </form>  
                    <?php
                        if(isset($_POST['ubah_password'])){
                            
                            $pass1  = $_POST['pass1'];
                            $pass2  = $_POST['pass2'];

                            if($pass2 != $pass1){
                                echo '<script>alert("Konfirmasi Password Baru Tidak Sesuai")</script>';
                            }else{

                                $u_pass = mysqli_query($conn, "UPDATE tb_admin SET
                                            password   = '".MD5($pass1)."' 
                                            WHERE id_admin  = '".$d->id_admin."' ");
                                if($u_pass){
                                    echo '<script>alert("Ubah Data Berhasil")</script>';
                                    echo '<script>window.location="profile"</script>';
                                }else{
                                    echo 'gagal '.mysqli_error($conn);
                                }

                            }
                            

                        }
                    ?>
               </div>
           </div>
       </div>
 
       <!-- Footer -->
       <div class="footer">
            <div class="col-6">
                <h3>Hubungi Kami</h3>
                    <ul class="address">
                        <li><i class="fas fa-map-marker-alt"></i>Yogyakarta, Indonesia</li>
                        <li><i class="fas fa-envelope"></i><a href="mailto:info@email">info@email</a></li>
                        <li><i class="fas fa-phone"></i><a href="https://api.whatsapp.com/send?phone=<?php echo $a->telp_admin ?>&text=Hai, saya tertarik dengan produk Anda." target="_blank">+62 8157 5900 148</a></li>
                    </ul>
            </div>
            <div class="col-6">
                <h3>Tentang Kami</h3>
                    <ul class="address">
                        <li><i class="fas fa-arrow-right"></i><a href="about">About Us</a></li>
                    </ul>
            </div>
        </div>

    </body>
</html>