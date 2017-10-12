# Part I Inanimate Objects

### Traditional random walk
```java
x += int(random(3)) - 1;
y += int(random(3)) - 1;
```

### Simple probability
```java
float num = random(1);
    
if (num < 0.4) {
  x++;
} else if (num < 0.6) {
  x--;
} else if (num < 0.8) {
  y++;
} else {
  y--;
}
```

### Distribution of numbers
__Bell curve (Gaussian Distribution)__

(page 11,12)
* distribution groups at the median
* standard deviation (give or take x)
* rare occassion of extremes (very high or very low, outside of standard deviation)
* 