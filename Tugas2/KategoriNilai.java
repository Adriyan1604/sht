package Tugas2;

import java.util.Scanner;

/**
 * @NamaKelas KategoriNilai
 * @Author M.Adriyan Maulana
 * @StudentID 202210370311005
 *
 * @method main
 * @Tema Kategori Nilai
 */

public class KategoriNilai {

    public static void main(String[] args) {
        Scanner inputScanner = new Scanner(System.in);

        System.out.print("Masukkan skor Anda: ");
        int skor = inputScanner.nextInt();

        String kategori;

        if (skor >= 90 && skor <= 100) {
            kategori = "A";
        } else if (skor >= 80 && skor < 90) {
            kategori = "B";
        } else if (skor >= 70 && skor < 80) {
            kategori = "C";
        } else if (skor >= 60 && skor < 70) {
            kategori = "D";
        } else if (skor >= 0 && skor < 60) {
            kategori = "E (Tidak Lulus)";
        } else {
            kategori = "Skor tidak valid";
        }

        System.out.println("Kategori Nilai: " + kategori);

        inputScanner.close();
    }
}

