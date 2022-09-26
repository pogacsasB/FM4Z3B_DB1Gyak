package temp;

import java.io.*;
import java.util.*;

public class PBFileOlvas {

	public static int intOlvas(FileReader in) throws IOException {
		
		StringBuffer sc = new StringBuffer(12);
		int t;
		do {
			t = in.read();
			if ((char)t != ',') {
			
				sc.append((char)t);
			}
			else
				break;
			
		} while (true);
		
		return Integer.parseInt(sc.toString());
	}
	


	public static void main(String[] args) throws IOException {
		
		int db; 
		File fajl = new File("pogacsas.txt");
		FileReader be_stream = new FileReader(fajl);
		
		db = intOlvas(be_stream);
		System.out.println("Adatok szama = " + db);
		
		int[] x = new int[db];
		for (int i = 0; i < db; i++) {
			x[i] = intOlvas(be_stream);
			System.out.println(i + ". adat = " + x[i]);
		}
		be_stream.close();
		
		int osszeg = 0;
		for (int i = 0; i < db; i++) {
			osszeg += x[i];
		}
		System.out.println("Osszeg: " + osszeg);
	}

}
