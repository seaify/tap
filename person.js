class Person {
  constructor(name) {
    this.name = name;
  }
  talk() {
    console.log(`send ajax request ${this.name}`);
  }
}

var persons = [new Person('hello'), new Person('world')];

async function handlePersons(persons) {
  for(const person of persons) {
    await person.talk();
  }
};

handlePersons((persons));
