import WithSpecializedGeneric

let a = 17
let b = 25

let (result, code) = #stringify(a + b)

print("The value \(result) was produced by the code \"\(code)\"")

enum Scoped {
    @WithSpecializedGeneric(namedAs: "Hola", specializing: "T", to: Int)
    struct Hello<T> {
        let a: T
    }
}

