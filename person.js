class Person {
    constructor(name) {
        this.name = name;
    }
    talk() {
        console.log('send ajax request');
    }
}
var persons = [new Person('hello'), new Person('world')];
console.log(persons);
let requests = persons.map((person) => {
    return new Promise((resolve) => {
        resolve(person.talk());
    });
});
Promise.all(requests).then(() => console.log('done'));
