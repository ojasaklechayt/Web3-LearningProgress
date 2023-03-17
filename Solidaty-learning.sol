//1
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

// contract HelloWorld {
//     string public greet = "Hello World";
// }

//2
// contract Counter{
//     uint public count;

//     function get() public view returns (uint) {
//         return count;
//     }

//     function inc() public {
//         count+=1;
//     }

//     function dec() public {
//         count-=1;
//     }
// }

//3
// contract Primitives {
//     bool public boo = true;
//     uint8 public u8 = 1;
//     uint public u256 = 456;
//     uint public u = 123;

//     int8 public i8 = -1;
//     int public i256 = 456;
//     int public i = -123;

//     int public minInt = type(int).min;
//     int public maxInt = type(int).max;

//     address public adr = blah blah...;

//     bytes1 a = 0xb5;
//     bytes1 b = 0x56;

//     bool public defaultBoo;
//     uint public defaultUint;
//     int public defaultInt;
//     address public defaultAddr;

// }

//4
// contract Variables {
//     string public text = "Hello";
//     uint public num = 123;
//     function doSomething() public {
//         uint i = 456;

//         uint timestamp = block.timestamp;
//         address sender = msg.sender;
//     }
// }

//5
// contract constants {
//     address public constant myaddress = blah blah;
//     uint public constant myint = 123;
// }

//6
// contract immutable {
//     address public immutable my_address;
//     uint public immutable myint;

//     constructor(uint _myuint){
//         my_address = msg.sender;
//         myint = _myuint;
//     }
// }

//7
// contract simplestorage {
//     uint public num;

//     function set(uint _num) public{
//         num = _num;
//     }

//     function get() public view returns(int) {
//         return num;
//     }
// }

// //8
// contract etherunits{
//     uint public onewei = 1 wei;
//     bool public isonewei = 1 wei == 1;
//     uint public oneether = 1 ether;
//     bool public isoneether = 1 ether == 1e18;
// }

// //9
// contract gas{
//     function forever() public {
//         while(true){
//             i+=1;
//         }
//     }
// }

// //10
// contract ifelse{
//     function foo(uint x) public pure returns(uint) {
//         if(x < 10){
//             return 0;
//         }
//         else if (x < 20){
//             return 1;
//         }
//         else {
//             return 2;
//         }
//     }
//     function Ternary(uint _x) public pure returns(uint){
//         return _x < 10 ? 1 : 2;
//     }
// }

//11
// contract Loop {
//     function loop() public {
//         for(uint i=0;i<10;i++){
//             if(i==3){
//                 continue;
//             }
//             if(i==5){
//                 break;
//             }
//         }
//         uint j;
//         while(j<10){
//             j++;
//         }
//     }
// }

//12
// contract Mapping{
//     mapping(address => uint) public myMap;

//     function get(address _addr) public view returns (uint) {
//         return myMap[_addr];
//     }

//     function set(address _addr,uint _i) public {
//         myMap[_addr]=_i;
//     }

//     function remove(address _addr) public {
//         delete myMap[_addr];
//     }
// }

// contract NestedMapping {
//     mapping(address => mapping(uint=>bool)) public nested;

//     function get(address _addr1,uint _i) public view returns (bool){
//         return nested[_addr1][_i];
//     }

//     function set(address _addr1,uint _i) public view returns (bool) {
//         nested[_addr1][_i] = _boo;
//     }

//     function remove(address _addr1,uint _i) public{
//         delete nested[_addr1][_i];
//     }
// }

//13
// contract Array {
//     uint[] public arr;
//     uint[] public arr2 = [1,2,3];
//     uint[10] public myFixedSizeArr;

//     function get(uint i) public view returns (uint){
//         return arr[i];
//     }
//     function push(uint i) public {
//         arr.push(i);
//     }

//     function pop(uint i) public {
//         arr.pop(i);
//     }

//     function getLength() public view returns (uint) {
//         return arr.length;
//     }

//     function remove(uint index) public {
//         delete arr[index];
//     }

//     function examples() external {
//         uint[] memory a = new uint[](5);
//     }
// }

// contract ArrayRemoveByShifting{
//     uint[] public arr;

//     function remove(uint _index) public {
//         require(_index < arr.length,"Index out of bound");
//         for(uint i = _index; i < arr.length - 1; i++) {
//             arr[i] = arr[i+1];
//         }
//         arr.pop();
//     }

//     function test() external {
//         arr = [1,2,3,4,5];
//         remove(2);
//         assert(arr[0] == 1);
//         assert(arr[1] == 2);
//         assert(arr[2] == 4);
//         assert(arr[3] == 5);
//         assert(arr.length == 4);

//         arr = [1];
//         remove(0);
//         assert(arr.length == 0);
//     }
// }

// contract ArrayReplaceFromEnd {
//     uint[] public arr;

//     function remove(uint index) public {
//         arr[index] = arr[arr.length - 1];
//         arr.pop();
//     }

//     function test() public {
//         arr=[1,2,3,4];
//         remove(1);
//         assert(arr.length == 3);
//         assert(arr[0] == 1);
//         assert(arr[1] == 4);
//         assert(arr[2] == 3);

//         remove(2);
//         assert(arr.length == 2);
//         assert(arr[0] == 1);
//         assert(arr[1] == 4);
//     }
// }

//14
// contract Enum {
//     enum Status {
//         Pending,
//         Shipped,
//         Acepted,
//         Rejected,
//         Canceled
//     }

//     Status public status;
//     function get() public view returns (Status) {
//         return status;
//     }

//     function set(Status _status) public {
//         status = _status;
//     }

//     function cancel() public {
//         status = Status.Canceled;
//     }

//     function reset() public {
//         delete status;
//     }
// }

//15
// contract Todos {
//     struct Todo {
//         string text;
//         bool completed;
//     }

//     Todo[] public todos;

//     function create(string calldata _text) public {
//         todos.push(Todo(_text,false));
//         todos.push(Todo({text: _text,completed: false}));

//         Todo memory todo;
//         todo.text = _text;
//         todos.push(todo);
//     }

//     function get(uint _index) public view returns (string memory text, bool completed) {
//         Todo storage todo = todos[_index];
//         return (todo.text, todo.completed);
//     }

//     function updateText(uint _index,string calldata _text) public{
//         Todo storage todo = todos[_index];
//         todo.text = _text;
//     }

//     function toggleCompleted(uint _index) public {
//         Todo storage todo = todos[_index];
//         todo.completed = !todo.completed;
//     }
// }

//16
// contract DataLocations {
//     uint[] public arr;
//     mapping(uint => address) map;
//     struct MyStruct {
//         uint foo;
//     }
//     mapping (uint => MyStruct) myStructs;

//     function f() public {
//         _f(arr,map,myStructs[1]);

//         MyStruct storage myStruct = myStructs[1];
//         MyStruct memory myMemStruct = MyStruct(0);
//     }

//     function _f()(
//         uint[] storage _arr,
//         mapping(uint => address) storage _map,
//         MyStruct storage _myStruct
//     ) internal {

//     }

//     function g(uint[] memory _arr) public returns (uint[] memory){

//     }

//     function h(uint[] calldata _arr) external {

//     }
// }

//17
// contract Function {
//     function returnMany() public pure returns (uint,bool,uint){
//         return (1,true,2);
//     }

//     function names() public pure returns (uint x,bool b,uint y){
//         return (1,true,2);
//     }

//     function assigned() public pure returns (uint x,bool b, uint y){
//         x = 1;
//         b = true;
//         y = 2;
//     }

//     function destructuringasignments()
//         public
//         pure
//         returns(uint,bool,uint,uint,uint){
//             (uint i,bool b,uint j) = returnMany();

//             (uint x, ,uint y) = (4,5,6);

//             return (i,b,j,x,y);
//         }

//     function arrayInput(uint [] memory _arr) public {}

//     uint[] public arr;

//     function arrayOutput() public view returns (uint[] memory){
//         return arr;
//     }
// }

// contract XYZ{
//     function someFuncWithManyInputs(
//         uint x,
//         uint y,
//         uint z,
//         address a,
//         bool b,
//         string memory c
//     ) public pure returns (uint) {}

//     function callFunc() external pure returns (uint){
//         return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
//     }

//     function callFuncWithKeyValue() external pure returns (uint) {
//         return
//             someFuncWithManyInputs({a: address(0),b: true,c: "c", x: 1,y: 2,z: 3});
//     }
// }

//18
// contract ViewandPure {
//     uint public x = 1;

//     function addToX(uint y) public view returns (uint){
//         return x+y;
//     }

//     function add(uint i, uint j) public pure returns (uint) {
//         return i+j;
//     }
// }

//19
// contract error {
//     function testRequire(uint _i) public pure {
//         require(_i>10,"Input must be greater than 10");
//     }

//     function testRevert(uint _i) public pure {
//         if(_i<=10){
//             revert("Iput must be greater than 10");
//         }
//     }
    
//     uint public num;

//     function testAssert() public view{
//         assert(num == 0);
//     }

//     error InsufficientBalance(uint balance, uint withdrawAmount);

//     function testCustomError(uint _withdrawAmount) public view {
//         uint bal = address(this).balance;

//         if(bal< _withdrawAmount){
//             revert InsufficientBalance({balance: bal, _withdrawAmount: _withdrawAmount});
//         }
//     }
// }

// contract Account {
//     uint public balance;
//     uint public constant MAX_UINT = 2**256 - 1;

//     function deposit(uint _amount) public {
//         uint oldBalance = balance;
//         uint newBalance = balance + _amount;

//         require(newBalance >= oldBalance,"Overflow");

//         balance = newBalance;

//         assert(balance >= oldBalance);
//     }

//     function withdraw(uint _amount) public {
//         uint oldBalance = balance;

//         require(balance >= _amount, "Underflow");

//         if(balance< _amount){
//             revert("Underflow");
//         }

//         balance -= _amount;

//         assert(balance <= oldBalance);
//     }
// }

//20
// contract FunctionModifier{
//     address public owner;
//     uint public x = 10;
//     bool public locked;

//     constructor(){
//         owner = msg.sender;
//     }

//     modifier onlyOwner(){
//         require(msg.sender == owner,"Not Owner");
//         _;
//     }

//     modifier validAddress(address _addr){
//         require(_addr != address(0), "Not valid address");
//         _;
//     }

//     function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner){
//         owner = _newOwner;
//     }
//     modifier noReentrance(){
//         require(!locked, "No Reenterance");

//         locked = true;
//         _;
//         locked = false;
//     }

//     function decrement(uint i) public noReentrance {
//         x -= i;
//         if(i>1){
//             decrement(i-1);
//         }
//     }
// }

//21
// contract Event{
//     event Log(address indexed sender, string message);
//     event AnotherLog();

//     function test() public {
//         emit Log(msg.sender, "Hello World!");
//         emit Log(msg.sender, "Hello EVM!");
//         emit AnotherLog();
//     }
// }

//22
// contract X {
//     string public name;
//     constructor(string memory _name) {
//         name = _name;
//     }
// }

// contract Y {
//     string public text;
//     constructor(string memory _text){
//         text = _text;
//     }
// }

// contract B is X("Input to X"), Y('Input to Y') {
//     constructor(string memory _name,string memory _text) X(_name) Y(_text) {}
// }

// contract D is X,Y {
//     constructor() X("X was called") Y("Y was called") {}
// }

// contract E is X,Y {
//     constructor() Y("Y was called") X("X was called") {}
// }

//23
// contract A {
//     fuction foo() public pure virtual returns (string memory) {
//         return 'A';
//     }
// }

// contract B is A {
//     function foo() public pure virtual override returns (string memory) {
//         return "B";
//     }
// }

// contract C is  A {
//     function foo() public pure virtual override returns (string memory) {
//         return "C";
//     }
// }

// contract D is B,C {
//     function foo() public pure override(B,C) returns (string memory) {
//         returns super.foo();
//     }
// }

// contract E is C,B {
//     function foo() public pure override(C,B) returns (string memory) {
//         return super.foo();
//     }
// }

// contract F is A,B {
//     function foo() public pure override(A,B) returns (string memory) {
//         retunr super.foo();
//     }
// }

//24
// contract A {
//     string public name = "Contract A";
//     function getName() public view returns (string memory) {
//         return name;
//     }

//     contract C is A {
//         constructor() {
//             name = "Contract C";
//         }
//     }
// }

//25
// contract A {
//     event Log(string message);
//     function foo() public virtual {
//         emit Log("A.foo called");
//     }

//     function bar() public virtual {
//         emit Log("A.bar called");
//     }
// }

// contract B is A {
//     function foo() public virtual override {
//         emit Log("B.foo called");
//     }

//     function bar() public virtual override {
//         emit Log('B.bar called');
//         super.bar();
//     }
// }

// contract C is A {
//     function foo() public virtual override {
//         emit Log("C.foo called");
//         A.foo();
//     }

//     function bar() public virtual override {
//         emit Log("C.bar called");
//         super.bar();
//     }
// }

// contract D is B,C {
//     function foo() public override(B,C){
//         super.foo();
//     }
//     function bar() public override(B,C){
//         super.bar();
//     }
// }

