# VHDL Type Conversion Package

A simple type conversion package to convert between data types provided by the
numeric_std and std_logic_arith packages. This core contains packages only and
is not meant to be synthesized as a standalone core as it stands currently.

## Numeric Standard

Usage:

1. Include the file numeric_type_conv_pkg.vhd in your project.
1. Inlcude the library in your source code where conversions are necessary using the code below:

```VHDL
library work;
use work.numeric_type_conv_pkg.all;
```

## Standard Logic Arithmetic

Usage:

1. Include the file arith_type_conv_pkg.vhd in your project.
1. Inlcude the library in your source code where conversions are necessary using the code below:

```VHDL
library work;
use work.arith_type_conv_pkg.all;
```
