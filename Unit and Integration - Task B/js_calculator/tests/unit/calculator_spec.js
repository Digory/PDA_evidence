var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  it('should add two numbers together', function () {
    calculator.previousTotal = 1;
    calculator.add(4);
    actual = calculator.runningTotal;
    assert.equal(actual, 5);
  })

  it('should subtract one number from another', function () {
    calculator.previousTotal = 7;
    calculator.subtract(4);
    actual = calculator.runningTotal;
    assert.equal(actual, 3);
  })

  it('should multiply two numbers together', function () {
    calculator.previousTotal = 3;
    calculator.multiply(5);
    actual = calculator.runningTotal;
    assert.equal(actual, 15);
  })

  it('should divide one number by another', function () {
    calculator.previousTotal = 21;
    calculator.divide(7);
    actual = calculator.runningTotal;
    assert.equal(actual, 3);
  })

  it('should concatenate multiple number clicks', function () {
    calculator.numberClick(1);
    calculator.numberClick(1);
    actual = calculator.runningTotal;
    assert.equal(actual, 11);
  })

  it('should chain multiple operations together', function () {
    calculator.numberClick(1);
    calculator.operatorClick('+');
    calculator.numberClick(1);
    calculator.operatorClick('=')
    actual = calculator.runningTotal;
    assert.equal(actual, 2);
  })

  it('should clear the running total', function () {
    calculator.previousTotal = 1;
    calculator.clearClick();
    actual = calculator.runningTotal;
    assert.equal(actual, 0);
  })
});
