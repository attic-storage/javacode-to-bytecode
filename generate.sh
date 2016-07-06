#!/bin/bash

classname=$1
jdkpath=$2

echo "# Code to Bytecode for ${classname}.java" > ${classname}.md
echo "" >> ${classname}.md
echo "## Sources" >> ${classname}.md
echo '```java' >> ${classname}.md
cat ${classname}.java >> ${classname}.md
echo '```' >> ${classname}.md
echo "" >> ${classname}.md
echo "## Bytecode" >> ${classname}.md
echo '```' >> ${classname}.md
${jdkpath}javac ${classname}.java
${jdkpath}javap -c ${classname}.class >> ${classname}.md
echo '```' >> ${classname}.md

