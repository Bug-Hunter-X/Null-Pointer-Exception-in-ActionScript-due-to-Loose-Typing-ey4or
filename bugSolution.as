function myFunction(param1:Object, param2:Object):void {
  if (param1 === null && param2 === null) {
    trace("Both parameters are null");
  } else if (param1 === null) {
    trace("param1 is null");
    // Handle the case where param1 is null, but param2 is not
  } else if (param2 === null) {
    trace("param2 is null");
    // Handle the case where param2 is null, but param1 is not
  } else {
    // Process both param1 and param2
    trace(param1.someProperty); //Example - safer to check if the property exists first
    trace(param2.someOtherProperty);
  }
}

// Safer alternative using strict equality and optional chaining
function myFunctionSafer(param1:Object, param2:Object):void {
  trace(param1?.someProperty);
  trace(param2?.someOtherProperty);
} 