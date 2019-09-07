import UIKit
/*
1. Написать функцию, которая определяет, четное число или нет.
2. Написать функцию, которая определяет, делится ли число без остатка на 3.
3. Создать возрастающий массив из 100 чисел.
4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.
*/

// 1 Задание



func chetnoeChislo (_ a: inout Int) -> String {
    let b: String
    if (a % 2) == 0 {
        b = "Число \(a) - четное"
    } else {
        b = "Число \(a) - нечетное"
    }
    return b
}

var a = 468

print(chetnoeChislo(&a))


// 2 Задание

func delOnThree (_ a: inout Int) -> String {
    let b: String
    if (a % 3) == 0 {
        b = "Число \(a) делится на 3 без остатка"
    } else {
        b = "Число \(a) не делится на три без остатка"
    }
    return b
}

print(delOnThree(&a))

// 3 Задание

var cArray: [Int] = []

for i in 0...99 {
    cArray.append(i)
}
print(cArray)

// 4 Задание

for (_, value) in cArray.enumerated() {
    
    if (value % 2) == 0 || (value % 3) != 0 {
        cArray.remove(at: cArray.firstIndex(of: value)!)
    }
}
print(cArray)

// 5 Задание

func fibonaci(_ count: Int) -> [Double] {
    var dArray: [Double] = []
    if count == 1 {
        let f0: Double = 0
        dArray.append(f0)
    } else if count == 2 {
        let f0: Double = 0
        let f1: Double = 1
        dArray.append(f0)
        dArray.append(f1)
    } else {
        let f0: Double = 0
        let f1: Double = 1
        dArray.append(f0)
        dArray.append(f1)
        var n = 2
        while n < count + 2 {
            let n1 = (dArray[n-1]) + (dArray[n-2])
            dArray.append(n1)
            n+=1
        }
    }
    return dArray
}

print(fibonaci(100))
