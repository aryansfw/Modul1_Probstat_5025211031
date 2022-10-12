# Praktikum Probabilitas dan Statistika Modul 1
Nama: Aryan Shafa Wardana\
NRP: 5025211031
 
## Nomor 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.
* ### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
  Pada soal ini diberikan `X = 3` yang merupakan jumlah orang yang tidak menghadiri acara vaksinasi dan `p = 0.20` yang merupakan peluang dari populasi menghadiri acara vaksinasi. Soal ini dapat diselesaikan dengan memanfaatkan fungsi `dgeom(x, prob)` yang menghitung probabilitas sejumlah kegagalan `x` sebelum keberhasilan pertama jika setiap percobaan memiliki peluang `prob`. Implementasi sebagai berikut.
  ![1a](https://user-images.githubusercontent.com/115603634/195280279-7bc04f84-c96d-4ab7-96c2-a03828f740c7.PNG)
  Fungsi cat akan mencetak hasil perhitungan dari `dgeom(x, p)` yaitu didapatkan hasil `Peluang = 0.1024`.
* ### b. Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
  Pada soal ini diberikan data random `n = 10000`, `prob = 0.20`, dan `X = 3`. Soal ini dapat diselesaikan menggunakan fungsi `rgeom(n, p)` untuk menghasilkan data-data random yang menyatakan jumlah kegagalan sebelum keberhasilan dan fungsi `mean(data)` untuk menghitung rata-rata. Implementasi sebagai berikut
  ![1b](https://user-images.githubusercontent.com/115603634/195281586-a88450b7-060e-4a66-bda1-e623b5d3e748.PNG)
  Hasil yang didapatkan adalah `Mean = 0.1052` dan `Mean = 0.1011` pada percobaan pertama dan kedua.
* ### c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  Pada poin A, nilai peluang selalu tetap, sedangkan pada poin B, mean dapat berubah-ubah karena menggunakan data-data yang random. Jadi, dapat disimpulkan bahwa nilai peluang pada poin A selalu tetap sedangkan mean pada poin B selalu berubah.
* ### d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
  Pada soal ini diminta untuk membuat histogram distribusi geometrik. Histogram dapat dibuat dengan fungsi `hist()`. Dengan memasukkan data hasil `rgeom(n, p)` dan memberi nama, warna kotak, dan label pada sumbu X maka didapat hasil sebagai berikut.
  ```
  hist(dist,
    main = "Histogram Distribusi Geometrik",
    col = "#a3c6f7",
    xlab = "X")
  ```
  Hasil grafik adalah sebagai berikut.
  ![image](https://user-images.githubusercontent.com/115603634/195283427-cf910e5d-2861-46e9-a45a-a6a0ae1356df.png)
 * ### e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
   Pada soal ini diminta rataan dan varian dari distribusi geometrik. Rataan memiliki rumus `μ = 1 - p` dan varian memiliki rumus `σ² = (1 - p) / p²`. Implementasi sebagai berikut.
   ![image](https://user-images.githubusercontent.com/115603634/195284684-51016a42-cd9e-4207-a7ef-7bc02a80ce15.png)
  Hasil yang didapatkan adalah `Rataan = 5` dan `Varian = 20`.
  
## Nomor 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
* ### a. Peluang terdapat 4 pasien yang sembuh.
 Pada soal ini diberikan pasien sebanyak `n = 20`, peluang sembuh sebanyak `p = 0.2`, dan pasien yang sembuh `X = 4`. Soal ini menggunakan distribusi binomial sehingga bisa diselesaikan menggunakan fungsi `dbinom(x, n, p)` untuk mendapat peluang 4 pasien yang sembuh. Implementasi sebagai berikut.
 ![image](https://user-images.githubusercontent.com/115603634/195288581-2ecdeb6a-8368-4cc2-bcf1-868cd59e167d.png)
 Hasil yang didapat adalah `Peluang = 0.218199401946101`.
* ### b. Gambarkan grafik histogram berdasarkan kasus tersebut.
 Grafik histogram distribusi binomial bisa digambar menggunakan fungsi `rbinom(n, size, p)` untuk menghasilkan data distribusi binomial secara random dan `hist()`. Implementasi sebagai berikut.
 ```
 dist <- rbinom(10000, n, p)
 hist(dist,
    main = "Histogram Distribusi Binomial",
    col = "#e81e36",
    xlab = "X")
 ```
 Hasil grafik adalah sebagai berikut.
 ![image](https://user-images.githubusercontent.com/115603634/195289121-1818c4cf-b6ff-4020-967f-eb5a713170a0.png)
 * ### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
 Pada soal ini diminta rataan dan varian dari distribusi geometrik. Rataan memiliki rumus `μ = n * p` dan varian memiliki rumus `σ² = n * p * (1 - p)`. Implementasi sebagai berikut.
 ![image](https://user-images.githubusercontent.com/115603634/195290740-e2458540-b6f7-435c-9887-c4f7f2b7c088.png)
 Hasil yang diperoleh adalah `Rataan = 4` dan `Varian = 3.2`.
 
## Nomor 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata
historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
* ### a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
 Pada soal ini diberikan rata-rata bayi lahir setiap hari sebesar `λ = 4.5` dan variabel random jumlah bayi lahir di rumah sakit besok `X = 6`. Soal ini dapat diselesaikan menggunakan fungsi `dpois(x, λ)` yang digunakan untuk menghitung peluang 6 bayi akan lahir di rumah sakit ini besok. Implementasi sebagai berikut.
 ![image](https://user-images.githubusercontent.com/115603634/195292661-cb9a4af5-bfdf-4c77-b467-fb8361df39b7.png)
Hasil yang diperoleh adalah `Peluang = 0.128120143864584`.
* ### b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
 Soal ini dapat diselesaikan menggunakan fungsi `rpois(n, λ)` untuk menghasilkan data random berdistribusi poisson dan `hist()` untuk menggambarkan grafik histogram. Implementasi sebagai berikut.
 ```
 n <- 365
 dist <- rpois(n, lambda)
 cat("b. (Histogram Distribusi Poisson)\n")
 hist(dist,
   main = "Histogram Distribusi Poisson",
   col = "#25db52",
   xlab = "X")
 ```
 Hasil grafik adalah sebagai berikut.
 ![image](https://user-images.githubusercontent.com/115603634/195293288-c92faea8-02b2-4b23-8dcc-489344ac3725.png)
* ### c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
Pada poin B, jika jumlah hari terjadi kelahiran 6 bayi dalam setahun dibandingkan dengan 365 hari maka hasilnya mendekati peluang pada poin A. Jadi, dapat disimpulkan bahwa simulasi distribusi Poisson sesuai dengan pendistribusi Poisson.
* ### d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
Pada soal ini diminta rataan dan varian dari distribusi geometrik. Rataan memiliki rumus `μ = λ` dan varian memiliki rumus `σ² = λ`. Implementasi sebagai berikut.
![image](https://user-images.githubusercontent.com/115603634/195293852-cdc8f039-1a52-4251-b82e-62244ddc6bec.png)
 Hasil yang diperoleh adalah `Rataan = 4.5` dan `Varian = 4.5`.
