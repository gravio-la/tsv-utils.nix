TSV-utils Nix Flake
===================

This Nix Flake provides a derivation of tsv-utils, a set of command line utilities for manipulating tabular data files. TSV stands for Tab Separated Values, and refers to a file format for storing tabular data in which each line represents a row and the values in each row are separated by a tab character.

To use this Nix Flake, you will need to have [Nix](https://nixos.org/nix/) installed on your system.

To view the content of the flake:

`nix flake show github:gravio-la/tsv-utils.nix`

To build and install tsv-utils from this Nix Flake, run the following command:


`nix build github:gravio-la/tsv-utils.nix`

This will build tsv-utils and create a symlink to the resulting binary in the current directory. You can then add this directory to your `PATH` in order to use tsv-utils from the command line.

Alternatively, you can install tsv-utils into your system by running the following command:


`nix shell  github:gravio-la/tsv-utils.nix`

This will install tsv-utils into your Nix profile, making it available to all users on the system.

Using tsv-utils
---------------

tsv-utils includes a number of command line utilities for manipulating tabular data files. Some of the most useful utilities are:
-   [tsv-filter](https://github.com/eBay/tsv-utils#tsv-filter) - Filter lines using numeric, string and regular expression comparisons against individual fields.
-   [tsv-select](https://github.com/eBay/tsv-utils#tsv-select) - Keep a subset of columns (fields). Like `cut`, but supporting named fields, field reordering, and field exclusions.
-   [tsv-uniq](https://github.com/eBay/tsv-utils#tsv-uniq) - Filter out duplicate lines using either the full line or individual fields as a key.
-   [tsv-summarize](https://github.com/eBay/tsv-utils#tsv-summarize) - Summary statistics on selected fields, against the full data set or grouped by key.
-   [tsv-sample](https://github.com/eBay/tsv-utils#tsv-sample) - Sample input lines or randomize their order. A number of sampling methods are available.
-   [tsv-join](https://github.com/eBay/tsv-utils#tsv-join) - Join lines from multiple files using fields as a key.
-   [tsv-pretty](https://github.com/eBay/tsv-utils#tsv-pretty) - Print TSV data aligned for easier reading on the command-line.
-   [csv2tsv](https://github.com/eBay/tsv-utils#csv2tsv) - Convert CSV files to TSV.
-   [tsv-split](https://github.com/eBay/tsv-utils#tsv-split) - Split data into multiple files. Random splits, random splits by key, and splits by blocks of lines.
-   [tsv-append](https://github.com/eBay/tsv-utils#tsv-append) - Concatenate TSV files. Header-aware; supports source file tracking.
-   [number-lines](https://github.com/eBay/tsv-utils#number-lines) - Number the input lines.
-   [keep-header](https://github.com/eBay/tsv-utils#keep-header) - Run a shell command in a header-aware fashion.

For more information on how to use these utilities, you can run the `--help` option for each command, or see the [tsv-utils documentation](https://github.com/eBay/tsv-utils#readme).

Contributing
------------

If you would like to contribute to this Nix Flake, please feel free to submit a pull request on GitHub.

License
-------

tsv-utils is licensed under the MIT License. See the [LICENSE](https:///LICENSE) file for more information.
