package sort;

public class ShellSort {
  
	 /* function to sort arr using shellSort */
	 void sort(int array[]){
		 int n = array.length;
		 // Start with a big gap, then reduce the gap
		 for (int gap = n/2; gap > 0; gap /= 2){
			/*
			 * Do gap insertion sorting for this gap size.
			 * The first gap elements a[0..gap-1] are already
			 * in gapped order keep adding one more element
			 * until the entire array is gap sorted
			 */
			 for (int i = gap; i < n; i += 1){
				/*add a[i] to the elements that have been gap
				   sorted save a[i] in temp and make a hole at
				   position i
				*/
				 int temp = array[i];
				 /*
				  shift earlier gap-sorted elements up until
				  the correct location for a[i] is found
				 */
				 int j;
				 for (j = i; j >= gap && array[j - gap] > temp; j -= gap)
					 array[j] = array[j - gap];
				 // put temp (the original a[i]) in its correct location
				 array[j] = temp;
			 }
		 }
	 }
}
