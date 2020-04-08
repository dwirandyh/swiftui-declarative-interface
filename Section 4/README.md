# Understanding State & Binding

### @State
State is a property that will watch for changes automatically and update any parts of our UI that use the state

### @Binding
lets us declare that one value actually comes from elsewhere, and should be shared in both places. For example we can use @Binding to bind state into the value of TextField so when Text of the textfield is changed the state will be changed as well

note: if we want to use binding value we should append `$` at the first variable name, if we want to pass binding value to other views we should use `Binding<datatype>` as parameter of other views, for example we can see it on `Toggle(isOn: Binding<Bool>)`

### ObsersevableObject / BindableObject
`ObservableObject/BindableObject` is basically that object when we can `notify` the change to particular objects
for example: when we call api and then notify the view to update view with updated data

We should use `@Published` annotation for the property of ObservableObject, so when the property is changed we will be notified


### @EnvironmentObject
`@EnvironmentObject` is way to `share object between views`, but when can use @ObservedObject on lots of views. Rather than creating some data in view A, then passing it to view B, then view C, then view D before finally using it, you can create it in view and put it into the environment so that views B, C, and D will automatically have access to it.
