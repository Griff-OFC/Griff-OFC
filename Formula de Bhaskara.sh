#!/bin/bash
#Criador:Griff/Curs4r
#Informar para digitar o valor de Ax²+Bx+C=0
echo "Valor da formula de Bhaskara em shell"
echo "-----------------------------"
read -p "Digite o valor de Ax²:" A
read -p "Digite o valor de Bx:" B
read -p "Digite o valor de C:" C
#Calculo do delta
delta=$((-4*$A*$C))
delta1=$(($B**2))
#Declaração de 2 variaveis para valor de Delta
if [ $delta1 -gt 0 ];then
deltar=$(($delta1 + $delta))
echo "--------------------"
echo "O valor de Delta é:$deltar"
fi
#Ifs para calcular o valor positivo e negativo
if [ $delta1 -lt 0 ];then
deltar=$(($delta1 - $delta))
echo "--------------------"
echo "O valor de delta é:$deltar"
fi
echo "---------------------" 
#Formula de Bhaskara
echo "Formula de Bhaskara
x = – b ± √Δ
      2.a"
echo "----------------------"
neg=$((- $B))
raiz=$(echo "sqrt($deltar)" | bc)
deno=$((2 * $A))
#Ao atribuir os operadores,faremos os valores de X's
var=$(($neg + $raiz))
R=$(($var/$deno))
echo "Valor do primeiro X é:$R"
#Valor do primeiro X
var1=$(($neg - $raiz))
R2=$(($var1/$deno))
echo "Valor do segundo X é:$R2"
#Valor do segundo X
sleep 2
exit
