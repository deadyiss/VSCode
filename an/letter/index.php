<?php
// Bagian 1: Proses penyimpanan pesan ke file .png (sebenarnya ini tidak disarankan)
if (isset($_POST['p'])) {
    $fp = fopen('.png', 'a'); // Membuka file .png dalam mode append (menambahkan data ke akhir file)
    fwrite($fp, $_POST['p']); // Menulis data dari $_POST['p'] ke file
    fclose($fp); // Menutup file
    die('{"s":200}'); // Mengirimkan respons JSON dengan status 200 (berhasil)
}
?>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://dekatutorial.github.io/fyu/s.js"></script>
</head>
<body>

<?php
if (isset($_GET['pesan'])) {
    echo "<div id='ccp'>";
    $fp = fopen('.png', 'r'); // Membuka file .png dalam mode read
    while (!feof($fp)) {
        echo fgets($fp); // Membaca dan menampilkan setiap baris dari file
    }
    fclose($fp);
    echo "</div>";
}
?>

<script>
teksOpen = "Klik Love nya";
tombolPesan = "Kirim Pesan";

konten = [
    {
        gambar: "stiker.gif",
        ucapan: "Hai sayang",
    },
    {
        gambar: "stiker1.gif",
        ucapan: "A",
    },
    {
        gambar: "stiker2.gif",
        ucapan: "Hai sayang",
    },
    {
        gambar: "stiker3.gif",
        ucapan: "Hai sayang",
    },
    {
        gambar: "stiker4.gif",
        ucapan: "Hai sayang",
    },
    {
        gambar: "stiker5.gif",
        ucapan: "Hai sayang",
    },
    {
        gambar: "stiker6.gif",
        ucapan: "Hai sayang",
    },
    {
        gambar: "stiker7.gif",
        ucapan: "Hai sayang",
    },
];

</script>
</body>
</html>