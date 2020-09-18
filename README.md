# mkdirex
Automatic make directories for Epitech exercices

## Usage

```bash
mkdirex [-s <0|20>] [-e <0|20>] [-p <string>]

DESCRIPTION
  Automatic make directories accroding to the number

  -s, Start of the sequence [DEFAULT=1]

  -e, End of the sequence [DEFAULT=5]

  -s, name of all directories [DEFAULT='ex_']

EXEMPLE
  $ mkdirex -e 5  -m "ex_"
  >
  ./ex_1 Created!
  ./ex_2 Created!
  ./ex_3 Created!
  ./ex_4 Created!
  ./ex_5 Created!
  Done!

  $ ls
  > ./ex_01 ./ex_02 ...
```

## Add to PATH

```bash
$ nano ~/.bashrc

export MKDIREX=<your_path>
export PATH=$PATH:$MKDIREX
```
