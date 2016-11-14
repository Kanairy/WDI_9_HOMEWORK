console.log('wdiLib linked');

var wdi = {

  shuffle: function(list) {
    var shuffled = list.slice(0);
    for (var i = shuffled.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var temp = shuffled[i];
        shuffled[i] = shuffled[j];
        shuffled[j] = temp;
    }
    return shuffled;
  },

}

/*
# wdi lib

Writing our own library of useful functions

```
wdi.shuffle(list)
```

Returns a shuffled copy of the list

```
wdi.sample(list)
wdi.sample(list, 3)
```

Produce a random sample from the list. Pass a number to return n random elements from the list. Otherwise a single random item will be returned.

```
wdi.each(list, callback)
```

the each() method executes a provided function once per array element.

```
wdi.map(list, callback)
```

Produces a new array of values by mapping each value in list through a transformation function

```
wdi.filter(list, callback)
```

Looks through each value in the list, returning an array of all the values that pass a truth test
*/
