function mergesort(arr){
  if(arr.length === 0 || arr.length === 1){
    return arr;
  }
  console.log("arr: ",arr)
  var mid = Math.floor(arr.length/2);
  var left = arr.slice(0, mid);
  var right = arr.slice(mid, arr.length);
  console.log("mid: ", mid)
  console.log("left: ",left)
  console.log("right: ",right)
  return merge(mergesort(left), mergesort(right));
}

function merge(left, right) {
  var result = [];

  while (left.length && right.length) {
    if (left[0] <= right[0]) {
        result.push(left.shift());
    } else {
        result.push(right.shift());
    }
  }

  while (left.length) {
      result.push(left.shift());
  }
  while (right.length) {
    result.push(right.shift());
  }
  return result;
}

console.log(mergesort([3,124,2,6,34,7,123,22,52,5]))
