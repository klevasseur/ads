︠d2b6f56e-d17e-4dc3-b745-413469d0ba76i︠

%html
<h1>An Introduction to Sets and Combinatorics using SageMath</h1>
<p><strong><em><a title="Applied Discrete Structures " href=" http://faculty.uml.edu/klevasseur/ads2" target="_blank">Applied Discrete Structures</a> </em>by Alan Doerr &amp; Kenneth Levasseur is licensed under a Creative Commons Attribution - Noncommercial - &nbsp;No Derivative Works 3.0 United States License.</strong></p>
<p>Here are a few tips on how to get started using SageMath to work with sets and combinatorial calculations.</p>
<h2>Sets</h2>
<p>A set is an expression of the form Set(<em>list</em>). &nbsp; &nbsp;By wrapping a list with set, the order of elements appearing in the list and their duplication are ignored. &nbsp; &nbsp;For example, L1 and L2 are two different lists, but notice how as sets they are considered equal:</p>

︡29cc4272-4b7b-43ca-90ba-85ce90840422︡{"done":true,"html":"<h1>An Introduction to Sets and Combinatorics using SageMath</h1>\n<p><strong><em><a title=\"Applied Discrete Structures \" href=\" http://faculty.uml.edu/klevasseur/ads2\" target=\"_blank\">Applied Discrete Structures</a> </em>by Alan Doerr &amp; Kenneth Levasseur is licensed under a Creative Commons Attribution - Noncommercial - &nbsp;No Derivative Works 3.0 United States License.</strong></p>\n<p>Here are a few tips on how to get started using SageMath to work with sets and combinatorial calculations.</p>\n<h2>Sets</h2>\n<p>A set is an expression of the form Set(<em>list</em>). &nbsp; &nbsp;By wrapping a list with set, the order of elements appearing in the list and their duplication are ignored. &nbsp; &nbsp;For example, L1 and L2 are two different lists, but notice how as sets they are considered equal:</p>"}
︠f771f741-e1bc-47a5-b97d-7214d68651e4︠
L1=[3,6,9,0,3]
L2=[9,6,3,0,9]
L1==L2
︡5458fc60-6560-476a-b65d-f13967b1bb37︡{"stdout":"False\n"}︡{"done":true}︡
︠14debf65-a54c-4fa3-a379-fbf669522029s︠
Set(L1)==Set(L2)
︡81c68743-6f88-4199-acc8-1e13bd18d9b0︡{"stdout":"True\n"}︡{"done":true}︡
︠df6800ff-1692-4e25-a7ac-2a379677199ci︠
%html
<p>The standard set operations are all methods and/or functions that can act on Sage sets.  Use <code>srange</code> intead of <code>range</code> to get sagemath integers.</p>

︡e8d34bee-e239-4622-b619-54ed9e32ac83︡{"done":true,"html":"<p>The standard set operations are all methods and/or functions that can act on Sage sets.  Use <code>srange</code> intead of <code>range</code> to get sagemath integers.</p>"}
︠df18214f-d0e5-480b-83ec-756bab6873fcs︠
A=Set(srange(5,50,5))
︡4542fcf9-05a5-441f-ba1d-0718c45bb8da︡{"done":true}︡
︠15c4d9d6-5d42-4139-9198-2466b55524bes︠
B=Set(srange(6,50,6))
︡6d1dd840-9da0-41c3-92bf-4e7a01f3179c︡{"done":true}︡
︠1686490c-e635-48d1-b252-9d27c7738ce6i︠
%html
<p>Intersection:</p>

︡d8ca655c-232a-45e7-a8d6-d84bea844d5b︡{"html": "<p>Intersection:</p>"}︡
︠2eb8d7b7-54a5-462b-9a33-37eb3948032bs︠
A & B
︡92fc3b16-9db5-4cfb-a3e3-ae87abc9a4fa︡{"stdout":"{30}\n"}︡{"done":true}︡
︠4d50e681-4217-4786-a117-2b3024bf8b80i︠
%html
<p>Notice that the union isn't sorted in any obvious way</p>

︡a5c49d83-b4dc-4185-8738-cf4c366c6780︡︡{"done":true,"html":"<p>Notice that the union isn't sorted in any obvious way</p>"}
︠1656a505-8654-4eae-aa2b-c2b7ceab8ec9s︠
A | B
︡87da525a-4967-425e-8f36-132d23a2578f︡{"stdout":"{5, 6, 10, 12, 15, 18, 20, 24, 25, 30, 35, 36, 40, 42, 45, 48}\n"}︡{"done":true}︡
︠7929c5c6-96af-4511-8e59-3abb56c404e4i︠
%html
<p>The union operation is also a method, as are the other set operations.</p>

︡25f93702-e37f-46ec-a92e-f5aee457eedf︡{"html": "<p>The union operation is also a method, as are the other set operations.</p>"}︡
︠9854443d-b14b-4978-b3fc-12b7c40c346cs︠
A.union(B)
︡add9dbf8-ae60-4fda-99ee-c4f463fc27d8︡{"stdout":"{5, 6, 10, 12, 15, 18, 20, 24, 25, 30, 35, 36, 40, 42, 45, 48}\n"}︡{"done":true}︡
︠4888ff2c-e6c7-40f3-b9ae-8f74811603c1i︠
%html
<p>Caution: &nbsp;sorting a union strips away the set wrapper.</p>

︡a3dedd7b-77b1-4381-8ffe-1888c362fa96︡{"html": "<p>Caution: &nbsp;sorting a union strips away the set wrapper.</p>"}︡
︠a3d9797d-d6a7-4386-91fe-d06364be758bs︠
sorted(A|B)
︡6228d9ea-b9c8-461d-8fc8-cc793cd05669︡{"stdout":"[5, 6, 10, 12, 15, 18, 20, 24, 25, 30, 35, 36, 40, 42, 45, 48]\n"}︡{"done":true}︡
︠50640e78-925a-46b2-810b-919abf3c3eaei︠
%html
<p>Set difference, or complementation:</p>

︡2bb2adfb-efef-4704-bf40-d40223c0e64d︡{"html": "<p>Set difference, or complementation:</p>"}︡
︠8099e67d-e821-49af-bb99-c5ea6baf9b3fs︠
Set(srange(0,50)).difference(A)
︡85bf6a42-d2ea-4856-8928-ce6b95a02830︡{"stdout":"{0, 1, 2, 3, 4, 6, 7, 8, 9, 11, 12, 13, 14, 16, 17, 18, 19, 21, 22, 23, 24, 26, 27, 28, 29, 31, 32, 33, 34, 36, 37, 38, 39, 41, 42, 43, 44, 46, 47, 48, 49}\n"}︡{"done":true}︡
︠7cf241db-cb7a-4837-ba63-dee766207116i︠
%html
<p>&nbsp;</p>
<p>&nbsp;</p>

︡c2faa75a-6186-4fee-adde-349a16d2892b︡{"html": "<p>&nbsp;</p>\n<p>&nbsp;</p>"}︡
︠b15b64af-aede-4c70-9a9e-8f6c12cea71fs︠
U=Set([0,1,2,3])
︡0cd6d3ba-f2b2-4af8-bbb8-dff8358b9c61︡{"done":true}︡
︠a457a67c-cbda-437b-af91-042f7d0208f4s︠
subsets(U)
︡8f21ee0a-0594-4a4e-b04f-018b975d1b21︡{"stdout":"<generator object powerset at 0x7f4cc4455dc0>\n"}︡{"done":true}︡
︠5f3fce29-beb3-4cff-9edd-03b1e52d6e5di︠
%html
<p>You can easily convert the result to list, but in practice the result is often a very large list. &nbsp;Not the case here:</p>

︡94c34e69-5058-497f-9ed7-949f18a57e4b︡{"html": "<p>You can easily convert the result to list, but in practice the result is often a very large list. &nbsp;Not the case here:</p>"}︡
︠1ad03195-9301-49fe-b815-fbf8b6441d39s︠
list(subsets(U))
︡4be109b5-f70b-44cd-b602-39a34a0b191e︡{"stdout":"[[], [0], [1], [0, 1], [2], [0, 2], [1, 2], [0, 1, 2], [3], [0, 3], [1, 3], [0, 1, 3], [2, 3], [0, 2, 3], [1, 2, 3], [0, 1, 2, 3]]\n"}︡{"done":true}︡
︠2b9a1894-8a41-4c2b-8d1a-3ccea4b28307i︠
%html
<p>Here is a simple loop using the generator object.</p>

︡c7624e67-b323-4c15-9d68-a18096ff59b2︡{"html": "<p>Here is a simple loop using the generator object.</p>"}︡
︠3b470b9f-0d8d-4a75-808e-7da0e337c495s︠
for a in subsets(U):
    print(str(a)+ " has " +str(len(a))+" elements.")
︡baee88ad-2f46-4315-8b35-db3e6286c345︡{"stdout":"[] has 0 elements.\n[0] has 1 elements.\n[1] has 1 elements.\n[0, 1] has 2 elements.\n[2] has 1 elements.\n[0, 2] has 2 elements.\n[1, 2] has 2 elements.\n[0, 1, 2] has 3 elements.\n[3] has 1 elements.\n[0, 3] has 2 elements.\n[1, 3] has 2 elements.\n[0, 1, 3] has 3 elements.\n[2, 3] has 2 elements.\n[0, 2, 3] has 3 elements.\n[1, 2, 3] has 3 elements.\n[0, 1, 2, 3] has 4 elements.\n"}︡{"done":true}
︠136dd354-bb32-4399-b8f4-166eb51eba4bi︠
%html
<p>Here is an example where the generator goes through the 32768&nbsp;different subsets of the integers from 0 to 14 and tallies the cardinalities.</p>

︡8e833f52-c3b4-4bed-a955-03f0331ca443︡{"html": "<p>Here is an example where the generator goes through the 32768&nbsp;different subsets of the integers from 0 to 14 and tallies the cardinalities.</p>"}︡
︠e16f5e09-d6e4-4a46-a8d3-572d5f5d8fe6︠

setsize={}
for a in subsets(srange(0,15)):
    if len(a) in setsize:
        setsize[len(a)]+=1
    else:
        setsize[len(a)]=1
setsize.items()
︡1f558571-b172-4f72-b544-00be94264e16︡{"stdout":"[(0, 1), (1, 15), (2, 105), (3, 455), (4, 1365), (5, 3003), (6, 5005), (7, 6435), (8, 6435), (9, 5005), (10, 3003), (11, 1365), (12, 455), (13, 105), (14, 15), (15, 1)]\n"}︡{"done":true}︡
︠4c1c2404-a036-4630-a9aa-873ba4c8f25ei︠
%html
<h3>Set-builder notation in Sage</h3>

<p>Syntax for building a set by logical selection from a "universe" is remarkably similar to mathematical notation. &nbsp; Here the universe is the set {0, 1, 2, ..., 99} and we select the primes from that set.</p>

︡a0e336fb-eddd-40b5-a7f6-4e080dbb6a35︡{"html": "<h3>Set-builder notation in Sage</h3>\n\n<p>Syntax for building a set by logical selection from a \"universe\" is remarkably similar to mathematical notation. &nbsp; Here the universe is the set {0, 1, 2, ..., 99} and we select the primes from that set.</p>"}︡
︠7c893b4b-b364-4b10-929c-48c932cd2bb0s︠
Set([x for x in Set(srange(100)) if x.is_prime()])
︡c7e1d08c-40b0-4bee-8f9c-08d8f44c901e︡{"stdout":"{2, 3, 5, 7, 73, 11, 13, 79, 17, 19, 23, 89, 71, 29, 31, 97, 67, 37, 41, 43, 47, 83, 53, 59, 61}\n"}︡{"done":true}︡
︠5465c86a-fd79-4274-9c2a-2b76a42168cci︠
%html
<p>A list of rational numbers reduced to lowest terms with denominator less than 9 can be generated as follows.</p>

︡f2d97664-c591-488b-8a15-b94dcbff41c2︡{"done":true,"html":"<p>A list of rational numbers reduced to lowest terms with denominator less than 9 can be generated as follows.</p>"}
︠149a76b8-991d-4d10-b725-99c2102c4335s︠
[a/b for b in srange(9) for a in srange(1,b) if gcd(a,b)==1]

︡7476214a-dcef-4144-8600-908b54f8f102︡{"stdout":"[1/2, 1/3, 2/3, 1/4, 3/4, 1/5, 2/5, 3/5, 4/5, 1/6, 5/6, 1/7, 2/7, 3/7, 4/7, 5/7, 6/7, 1/8, 3/8, 5/8, 7/8]\n"}︡{"done":true}︡
︠3d3523f3-8bfe-4ac2-8a04-a750ce8edad8i︠
%html
<p>The condition on the greatest common divisor can be dropped if the set wrapper is used since duplicates are ignored.</p>


︡69f19c0a-baf2-4452-aa28-a449a5abfb38︡{"done":true,"html":"<p>The condition on the greatest common divisor can be dropped if the set wrapper is used since duplicates are ignored.</p>"}
︠0c7c44fa-094b-4869-954b-47adf97f63bes︠
Set([a/b for b in srange(9) for a in srange(1,b)])
︡d344d1f7-0c33-4705-8cdb-1374149dff00︡{"stdout":"{1/2, 1/3, 2/3, 1/4, 3/4, 1/5, 2/5, 3/5, 4/5, 1/8, 1/6, 5/6, 1/7, 2/7, 3/7, 4/7, 5/7, 6/7, 3/8, 5/8, 7/8}\n"}︡{"done":true}︡
︠b71aa6b6-0a88-4291-a427-6b0ed3681b9fi︠
%html
<p>We define R to the the integers modulo 81, (see Section 11.3 of <em>Applied Discrete Structures</em>). &nbsp;We then build the list of solutions to the equation &nbsp;69 <em>x</em> = 15.</p>

︡be60df88-92bc-4c4d-8ad5-809616513d84︡{"done":true,"html":"<p>We define R to the the integers modulo 81, (see Section 11.3 of <em>Applied Discrete Structures</em>). &nbsp;We then build the list of solutions to the equation &nbsp;69 <em>x</em> = 15.</p>"}
︠0625c5a7-66f2-407e-8898-4bf05b7162c2s︠
R=Integers(81)
︡782a97fe-6933-4721-8d70-6436dc0981af︡{"done":true}︡
︠e8d80cd1-26e6-4f29-825c-cf5ae0d9b9aes︠
Set([ x for x in R if R(69)*x == R(15)])
︡828614af-68cb-4bd8-a15d-fccd504203a3︡{"stdout":"{73, 19, 46}\n"}︡{"done":true}︡
︠03b5174c-6840-4a46-a2dd-58f4df0a1f4ei︠
%html
<h3>Cartesian Products</h3>

︡fd1df599-627e-4d46-ad8f-0160d0928370︡{"html": "<h3>Cartesian Products</h3>"}︡
︠c0107cde-f7f4-4508-a169-c7cef18bfc60s︠
bits=FiniteEnumeratedSet([0,1])
bits
︡a1b5ac08-c7bf-4eaf-a783-f5d6f72fe3ae︡{"stdout":"{0, 1}\n"}︡{"done":true}︡
︠0120903a-9f1e-4ecc-bc43-22f3f77b7384s︠
B3=cartesian_product([bits,bits,bits])
B3
︡7738c2b2-9975-4114-ba68-cc0b32533fe3︡{"stdout":"The Cartesian product of ({0, 1}, {0, 1}, {0, 1})\n"}︡{"done":true}︡
︠a40ca215-e63b-4324-a6fc-2e93274a9603s︠
B3.list()
︡527982fd-a8e0-4556-8468-6b46918e96d4︡{"stdout":"[(0, 0, 0), (0, 0, 1), (0, 1, 0), (0, 1, 1), (1, 0, 0), (1, 0, 1), (1, 1, 0), (1, 1, 1)]\n"}︡{"done":true}︡
︠247af1e6-90ef-444a-bb16-e5c8668b783es︠
def parity(s):
    sl=list(s)
    p=0
    for k in sl:
        p+=k
    return p.mod(2)
︡3c2eff44-2d29-499b-87e8-2bc53abd14e7︡{"done":true}︡
︠88ad8892-1238-458f-ad34-47267246f238s︠
parity((1,1,0))
︡1dd9b1bc-09d8-4609-a6bb-4bd1a5165298︡{"stdout":"0\n"}︡{"done":true}︡
︠09b3150f-2c56-4bb3-b53b-9dbdee82e789i︠
%html
<p>Here, we append a parity bit to each element of B3 to produce eight sequence of four bits, all with even parity.</p>

︡9c054af9-74a7-4e91-9ac5-c5212b59b69c︡{"html": "<p>Here, we append a parity bit to each element of B3 to produce eight sequence of four bits, all with even parity.</p>"}︡
︠cc24b6c2-ff1b-40f0-b413-bbd71496ac6bs︠
for s in B3:
   print(s,tuple(list(s)+[parity(s)]))
︡082de9a2-d06d-4361-833b-b5a7a4ab16b1︡{"stdout":"((0, 0, 0), (0, 0, 0, 0))\n((0, 0, 1), (0, 0, 1, 1))\n((0, 1, 0), (0, 1, 0, 1))\n((0, 1, 1), (0, 1, 1, 0))\n((1, 0, 0), (1, 0, 0, 1))\n((1, 0, 1), (1, 0, 1, 0))\n((1, 1, 0), (1, 1, 0, 0))\n((1, 1, 1), (1, 1, 1, 1))\n"}︡{"done":true}︡
︠bb248e01-0d52-41c9-bb86-3a9d65a70b2ai︠
%html
<h2>Basic Combinatorial Calculations</h2>

<p>The factorial function is method attached to integers</p>

︡811359f4-6e71-4474-bcb0-9481effba186︡{"html": "<h2>Basic Combinatorial Calculations</h2>\n\n<p>The factorial function is method attached to integers</p>"}︡
︠822a2b5b-2462-477c-a4cb-a24bdd4028cds︠
5.factorial()
︡86bca45f-fa05-4e0d-ad08-4555e549c263︡{"stdout":"120\n"}︡{"done":true}︡
︠d2f14ef3-5154-4667-928e-310f3a18f0e5i︠
%html
<p>Binomial coefficients are computed by the function <span style="font-family: 'courier new', courier;">binomial</span>.</p>

︡b1ded28f-5fca-460a-86fb-49182d2c4400︡{"html": "<p>Binomial coefficients are computed by the function <span style=\"font-family: 'courier new', courier;\">binomial</span>.</p>"}︡
︠6bf3c23c-68e5-421e-b476-a7db6ce2dc64︠
binomial(52,5)
︡220d8e03-e21c-45b4-b1f0-8ec7fc1a8110︡{"stdout": "2598960"}︡
︠545cdf7a-68da-453a-9a95-bde03a358309︠
var('n')
binomial(n,2)
︡bfc19f30-4c37-4acb-bff0-a75c1ad87a12︡{"stdout": "1/2*(n - 1)*n"}︡
︠0cb6f9c7-5463-41c7-94d6-82e0d506f83di︠
%html
<p>The <span style="font-family: 'courier new', courier;">binomial_coefficients</span> function creates a dictionary of values.</p>

︡2270b35a-79fc-46b1-b199-6e1b06942a69︡{"html": "<p>The <span style=\"font-family: 'courier new', courier;\">binomial_coefficients</span> function creates a dictionary of values.</p>"}︡
︠8ae431f5-643d-477c-87c7-6ed1795a654b︠
binomial_coefficients(8)
︡eb850147-51e3-44e9-bb88-58ebf7fae947︡{"stdout": "{(5, 3): 56, (2, 6): 28, (7, 1): 8, (8, 0): 1, (4, 4): 70, (6, 2): 28, (1, 7): 8, (0, 8): 1, (3, 5): 56}"}︡
︠44029de3-8356-4ff1-9e94-1dccb5c16268︠
large=binomial_coefficients(100)
︡c6b4627d-36b2-4531-9806-92e60acea353︡︡
︠11868176-e765-45ee-83f2-953bbe64fa04i︠
%html
<p>Here is "100 choose 40."</p>

︡f6d7b104-d889-48af-94dd-2f509e614877︡{"html": "<p>Here is \"100 choose 40.\"</p>"}︡
︠e745286f-da68-4aea-ba67-83807b1ba535︠
large[(60,40)]
︡09cf848a-1b41-4642-a61a-5ea254b61a9d︡{"stdout": "13746234145802811501267369720"}︡
︠f4aba527-af2c-449b-a018-a3ea62c4a797︠
large.values()
︡a5d608f0-42f5-4071-8d63-e83b0bcc47ab︡{"stdout": "[141629804643600, 93206558875049876949581681100, 161700, 132341572939212267400, 38116532895986727945334202400, 13746234145802811501267369720, 1917353200780443050763600, 5670048986634686922786117600, 84413487283064039501507937600, 49378235797073715747364762200, 1345860629046814650, 141629804643600, 66324638306863423796047200, 1095067153187962886461165020, 4998813702034726525205100, 4950, 9013924030034630492634340800, 580717429720889409486981450, 161700, 98913082887808032681188722800, 30664510802988208300, 79776075565900368755100, 75287520, 6650134872937201800, 1345860629046814650, 1977204582144932989443770175, 6650134872937201800, 4950, 28258808871162574166368460400, 1050421051106700, 29372339821610944823963760, 73470998190814997343905056800, 24865270306254660391200, 253338471349988640, 73470998190814997343905056800, 30664510802988208300, 143012501349174257560226775, 3420029547493938143902737600, 1902231808400, 20116440213369968050635175200, 1977204582144932989443770175, 16007560800, 7332066885177656269200, 294692427022540894366527900, 66324638306863423796047200, 3420029547493938143902737600, 7110542499799200, 79776075565900368755100, 186087894300, 4998813702034726525205100, 16007560800, 294692427022540894366527900, 29372339821610944823963760, 242519269720337121015504, 580717429720889409486981450, 100891344545564193334812497256, 38116532895986727945334202400, 84413487283064039501507937600, 253338471349988640, 1050421051106700, 242519269720337121015504, 535983370403809682970, 1, 75287520, 28258808871162574166368460400, 186087894300, 535983370403809682970, 20116440213369968050635175200, 699574816500972464467800, 5670048986634686922786117600, 1917353200780443050763600, 44186942677323600, 24865270306254660391200, 44186942677323600, 3921225, 12410847811948286545336800, 699574816500972464467800, 1, 9013924030034630492634340800, 143012501349174257560226775, 1192052400, 3921225, 1902231808400, 1192052400, 2041841411062132125600, 2041841411062132125600, 1095067153187962886461165020, 49378235797073715747364762200, 17310309456440, 98913082887808032681188722800, 100, 13746234145802811501267369720, 100, 17310309456440, 12410847811948286545336800, 132341572939212267400, 61448471214136179596720592960, 61448471214136179596720592960, 7332066885177656269200, 7110542499799200, 93206558875049876949581681100]"}︡









