#!/usr/bin/env bash

usage() {
  echo "" 1>&2;
  echo "mkdirex $0 [-n <0|100>] [-p <string>]" 1>&2;
  echo "" 1>&2;
  echo -e "\e[1mDESCRIPTION\e[0m" 1>&2;
  echo -e "\tAutomatic make directories accroding to the number" 1>&2;
  echo "" 1>&2;
  echo -e "\t-n, how many files" 1>&2;
  echo "" 1>&2;
  echo -e "\t-s, name of all directories" 1>&2;
  echo "" 1>&2;
  echo -e "\e[1mEXEMPLE\e[0m" 1>&2;
  echo -e "\tmkdirex -n 10 -s 'ex_' " 1>&2;
  echo -e "\t>10 directories created !" 1>&2;
  echo "" 1>&2;
  echo -e "\tls" 1>&2;
  echo -e "\t> ./ex_01 ./ex_02 ... " 1>&2;
  echo "" 1>&2;

  exit 1;
}

while getopts ":n:s:" o; do
  case "${o}" in
    n)
      n=${OPTARG}
      # ((n <= 0 || n >= 100)) || usage
      ;;
    s)
      s=${OPTARG}
      ;;
    *)
      usage
      ;;
  esac
done
shift $((OPTIND-1))

if [ -z "${n}" ] || [ -z "${s}" ]; then
  usage
fi

for i in `seq 1 ${n}`; do
  mkdir ./${s}${i};
  echo -e "./${s}${i} Created!" 1>&2;
done

echo "Done!" 1>&2;
