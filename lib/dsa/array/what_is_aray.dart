// An array is a collection of objects(items).That item could be intihers
// Strings DVDs, games, books anything. The items are stored in the
// neibouring (contiguous) memory locations.Because they're stored together,
//checking through the entire collection of items is straightforward.

// Creating an array

List<DVD> dvdCollection = [];

class DVD {
  final String movieName;
  final String director;
  final int releaseYear;

  DVD(this.movieName, this.director, this.releaseYear);
}

// Writing and reading item into an array

DVD avangersDVD = DVD('Aavanges', "Joss Whedon", 2013);
DVD incrediblesDVD = DVD("The Incredibles", "Brad Bird", 2004);
DVD findingDoryDVD = DVD("Finding Dory", "Andrew Stanton", 2016);
DVD lionKingDVD = DVD("The Lion King", "Jon Favreau", 2019);

addingMovies() {
  dvdCollection.add(avangersDVD);
  dvdCollection.add(incrediblesDVD);
  dvdCollection.add(findingDoryDVD);
  dvdCollection.add(lionKingDVD);
  dvdCollection.add(avangersDVD);
}

readingMovies() {
  for (var movies in dvdCollection) {
    print(movies.movieName);
  }
}

// Array problems by leet code
int findMaxConsecutiveOnes(List<int> nums) {
  int maxConsecutiveOnes = 0;
  int currentStreak = 0;

  for (int num in nums) {
    if (num == 1) {
      currentStreak++;
      if (currentStreak > maxConsecutiveOnes) {
        maxConsecutiveOnes = currentStreak;
      }
    } else {
      currentStreak = 0;
    }
  }
  print(maxConsecutiveOnes);
  return maxConsecutiveOnes;
}

// find number of elements having even number of digits

int findNumbers(List<int> nums) {
  int count = 0;

  for (int num in nums) {
    int digitCount = getDigitCount(num);

    if (digitCount % 2 == 0) {
      count++;
    }
  }
  print(count);
  return count;
}

int getDigitCount(int num) {
  if (num == 0) {
    return 1;
  }
  int count = 0;
  while (num != 0) {
    count++;
    num = num ~/ 10;
  }
  return count;
}

// Squares of a Sorted Array
List<int> sortedSquares(List<int> nums) {
  List<int> temp = [];
  for (int num in nums) {
    temp.add(num * num);
  }
  temp = sortTemp(temp);
  return temp;
}

sortTemp(temp) {
  // for (int i = 0; i < temp.length; i++) {
  //   for (int j = 0; j < temp.length - 1; j++) {
  //     if (temp[i] < temp[j]) {
  //       int tem= temp[j];
  //       temp[j]= temp[i];
  //       temp[i]= tem;
  //     }
  //   }
  // }
  // return temp;
  for (int i = 0; i < temp.length; i++) {
    for (int j = 0; j < temp.length - 1; j++) {
      if (temp[i] < temp[j]) {
        int tem = temp[j];
        temp[j] = temp[i];
        temp[i] = tem;
      }
    }
  }
  return temp;
}

// Array oparations

printList(List nums) {
  for (int i in nums) {
    print(i);
  }
}

List<int> intList = List<int>.filled(6, 0);
addElements() {
  int length = 0;

  for (int i = 0; i < 3; i++) {
    intList[length] = i;
    length++;
  }
  // intList[0] = 10;
  // printList(intList);
}

// insert a elemet in the first position

insertingFirst() {
  print(intList.length);
  for (int i = intList.length; i >= 0; i--) {
    intList[i + 1] = intList[i];
  }
  intList[0] = 20;
  printList(intList);
}

// Duplicate g=[g]
//[11,0,22,33,0,44,55,0]
duplicateZeros(List nums) {
  print("nums length:${nums.length}");
  for (int i = 0; i < nums.length; i++) {
    print('i value== ${nums[i]}, value of I :$i');
    if (nums[i] == 0) {
      for (int j = nums.length - 1; j > i; j--) {
        print('j loop :$j');
        nums[j] = nums[j - 1];
      }
      print('I value befor increment:$i');
      i++;
      print('I value after increment:$i');
    }
  }
  // printList(nums);
  return nums;
}
// Merge Sorted Array
// Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
// Output: [1,2,2,3,5,6]

merge(List<int> nums1, int m, List<int> nums2, int n) {
  int i = m - 1; // will point at m-1 index of nums1 array
  int j = n - 1; // will point at n-1 index of nums2 array
  int k = nums1.length - 1; //will point at the last position of the nums1 array
  while (j >= 0) {
    if (j >= 0) {
      nums1[k] = nums2[j];
      k--;
      j--;
    }
  }

  for (int p = 0; p < nums1.length; p++) {
    for (int b = 0; b < nums1.length - 1; b++) {
      if (nums1[p] < nums1[b]) {
        int tem = nums1[b];
        nums1[b] = nums1[p];
        nums1[p] = tem;
      }
    }
  }

  print(nums1);
}

// Array deletion

// deleting from the end of the array

deletingAtEnd() {
  List<int> array = List.filled(10, 0);
  int length = 0;
  for (int i = 0; i < 6; i++) {
    array[i] = i;
    length++;
  }
  length--;
  for (int i = 0; i < length; i++) {
    print(array[i]);
  }
}

deletingAtFirst() {
  List<int> array = List.filled(10, 0);
  int length = 0;
  for (int i = 0; i < 6; i++) {
    array[i] = i;
    length++;
  }

  for (int i = 1; i < length; i++) {
    array[i - 1] = array[i];
  }
  length--;

  for (int i = 0; i < length; i++) {
    print("index: $i value:${array[i]}");
  }
}
