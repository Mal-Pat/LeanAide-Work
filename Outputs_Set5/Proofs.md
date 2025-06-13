# Proofs for the Statements

1. **The sum of an even natural number and an odd natural number is an odd natural number.**

> An even natural number E can be expressed as E = 2\*p for some natural number p. An odd natural number O can be expressed as O = 2\*q + 1 for some natural number k. Let the even natural number be E and let the odd natural number be O. Then there exists natural numbers p and q such that E = 2\*p and O = 2\*q + 1. Take their sum to be S = E + O. By substituting E and O in this, we obtain S = (2\*p) + (2\*q + 1). Simplifying this, we get S = 2\*(p + q) + 1. Let p + q = k, since the sum of two natural numbers is another natural number. Thus, we get S = 2\*k + 1. Since S = E + O can be expressed as 2\*k + 1 for some natural number k, it is an odd number. Therefore, the sum of an even natural number and an odd natural number is an odd natural number.

3. **If an integer expressed in decimal notation ends with 0, 2, 4, 6, or 8, then it is divisible by 2.**

> This statement is equivalent to showing that numbers of the form 10 \* k1, 10 \* k2 + 2, 10 \* k3 + 4, 10 \* k4 + 6 and 10 \* k5 + 8 are divisible by 2, for some integers k1, k2, k3, k4 and k5. Let us treat this case by case. 
> Case for an integer ending with 0 : Let the integer ending with 0 be n. Then n = 10 \* k1, for some integer k1. This can be rewritten as n = 2 \* (5 \* k1). Let integer q1 = (5 \* k1). Then n = 2 \* q1 for some integer q1. Thus, 2 divides integer n ending with 0.
> Case for an integer ending with 2 : Let the integer ending with 2 be n. Then n = 10 \* k2 + 2, for some integer k2. This can be rewritten as n = 2 \* (5 \* k1 + 1). Let integer q2 = (5 \* k1 + 1). Then n = 2 \* q2 for some integer q2. Thus, 2 divides integer n ending with 2.
> Case for an integer ending with 4 : Let the integer ending with 4 be n. Then n = 10 \* k3 + 4, for some integer k3. This can be rewritten as n = 2 \* (5 \* k3 + 2). Let integer q3 = (5 \* k3 + 2). Then n = 2 \* q3 for some integer q3. Thus, 2 divides integer n ending with 4.
> Case for an integer ending with 6 : Let the integer ending with 6 be n. Then n = 10 \* k4 + 6, for some integer k4. This can be rewritten as n = 2 \* (5 \* k4 + 3). Let integer q4 = (5 \* k4 + 3). Then n = 2 \* q4 for some integer q4. Thus, 2 divides integer n ending with 6.
> Case for an integer ending with 8 : Let the integer ending with 8 be n. Then n = 10 \* k5 + 8, for some integer k5. This can be rewritten as n = 2 \* (5 \* k5 + 4). Let integer q5 = (5 \* k5 + 4). Then n = 2 \* q5 for some integer q5. Thus, 2 divides integer n ending with 8.
> From all the 5 cases, we have concluded that if an integer ends with 0, 2, 4, 6 or 8, then it is divisible by 2.

4. **If an integer is divisible by 12, then it is divisible by 3.**

> The statement "integer x is divisible by integer y" is equivalent to "there must exist an integer q such that x = y \* q". Let us take our integer that is divisible by 12 to be n. Clearly, since n is divisible by 12, there exists an integer q such that n = 12 \* q. Since 12 = 3 \* 4, We can rewrite this as n = 3 \* (4 \* q) (equation 1). Let integer k = 4 \* q (equation 2), since the product of two integer is an integer. Substituting (4 \* q) from equation 2 into equation 1, we get n = 3 \* k for some integer k. Therefore, n is divisible by 3, since there exists an integer k such that n = 3 \* k.

5. **If an integer x divides an integer y, and y divides an integer z, then x divides z.**

> The statement "integer a divides an integer b" is equivalent to "there exists an integer k such that b = a \* k". Since integer x divides integer y, there exists an integer p such that y = x \* p (equation 1). Also, since integer y divides integer z, there exists an integer q such that z = y \* q (equation 2). Substituting the value of y from equation 1 into equation 2, we get z = (x \* p) \* q. Simplifying this, we get z = x \* (p \* q) (equation 3) using the associativity of multiplication. Let p \* q be some integer k, that is, p \* q = k (equation 4), since the product of two integers in an integer. Substituting equation 4 into equation 3, we get z = x \* k. Thus, x divides z since there exists an integer k such that z = x \* k.

6. **If an integer x divides an integer y, and x divides an integer z, then x divides (y + z).**

> The statement "integer a divides an integer b" is equivalent to "there exists an integer k such that b = a \* k". Since integer x divides integer y, there exists an integer p such that y = x \* p (equation 1). Also, since integer x divides integer z, there exists an integer q such that z = x \* q (equation 2). Let the integer n = (y + z) (equation 3), since the sum of two integers is an integer.  Substituting y and z from equation 1 and equation 2, we get n = (x \* p) + (x \* q). This can be rearranged to give n = x \* (p + q) (equation 4). Let (p + q) = k (equation 5), since the sum of two integers is an integer. Substituting (p + q) from equation 5 into equation 4, we get n = x \* k. Since there exists an integer k such that n = x \* k, it implies that x divides n. Using equation 3, n = (y + z), it implies x divides (y + z). Therefore, x divides (y + z).