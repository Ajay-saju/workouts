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
