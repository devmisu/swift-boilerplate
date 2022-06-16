#  Swift Boilerplate

- [Frameworks](#frameworks)
- [App](#app)
    - [ContainerBuilder](#containerBuilder)
    - [Dependencies](#dependencies)
    - [Repositories](#repositories)
    - [Settings](#settings)
- [Source](#source)
    - [Assets](#assets)
    - [iOS](#ios)
        - [Views](#views)
        - [Controllers](#controllers)
    - [Presenter](#presenter)
    - [Domain](#domain)
    - [Service](#service)
        - [Persistence](#persistence)
        - [Networking](#networking)

# Frameworks
Esta carpeta contiene los `.frameworks` o `.xcframework` usados en el proyecto.

# App
Esta carpeta contiene las clases esenciales para configurar e inicializar la aplicación. 

## ContainerBuilder
Singleton que funciona como root del proyecto, su función es disponer de las dependecias, repositorios y variables de entorno necesarias para la aplicación.

Gracias a la inyección de dependencias, podemos obtener estos valores en cualquier momento.

```Swift
@Injected(\.settings.baseUrl)
var baseUrl: String!
```

## Dependencies
Protocolo abstracto que almacena las dependencias del proyecto.

## Repositories
Protocolo abstracto que almacena los repositorios del proyecto.

## Settings
Protocolo abstracto que almacena las variables de entorno del proyecto.

# Source
Esta carpeta contiene los recursos, vistas, clases, entre otros.

## Assets
Aquí se almacenan los assets del proyecto. Se recomienda crear un `.xcassets` único para:

- Colores
- App icons
- Flujos (ej: Login, Home)

De esta forma mantenemos un orden y es mucho mas fácil identificar a que pertenece cada recurso.

En caso sea necesario, puedes crear un asset "General" para guardar recursos que se usen en múltiples flujos.

Con el fin de mantener homologado los recursos y siguiendo las buenas prácticas empleadas por Apple, recomendamos lo siguiente:

- Usar prefijos establecidos: ic, bg, ...
- Palabras en minúscula separados por puntos (ej: ic.example)
- Si la imagen pertenece a un flujo en específico, usarlo como prefijo (ej: ic.login.example)

## iOS
Esta carpeta contiene las vistas y clases específicas para compilar la aplicación en dispositivos iOS.

Por defecto tenemos las carpetas Views y Controllers, pero de ser necesario podemos crear una carpeta para componentes generales, extensiones, entre otros.

```
└─ iOS
   └─ Views
      └─ ...
    └─ Controllers
      └─ ...
    └─ Components
    └─ Extensions
    └─ ...
```

### Views
Esta carpeta contiene los `.storyboard` de la aplicación. Por temas de orden y optimización se recomienda crear un Storyboard para cada flujo en específico.

En cuanto a la nomenclatura, se mantiene el camelCase.

### Controllers
Esta carpeta contiene las clases `UIViewController` de la aplicación. Al igual que en otros casos, se recomienda crear una carpeta para cada flujo en específico.

En cuanto a la nomenclatura, se mantiene el camelCase.

### 1. UIViewController
La estructura de los controllers se basa principalmente en segmentar el código usando `MARK` y `extension`.

Dentro de lo posible se recomienda mantener las variables y funciones con un scope privado, asímismo, el uso del keyword `final` en la clase.

```Swift
import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var viewContainer: UIView!

    // MARK: - Properties

    private var foo: String!

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        ...
    }
}

// MARK: - Actions

extension ViewController {

    @IBAction private func tapButton(_ sender: UIButton) {
        ...
    }
}

// MARK: - Methods

extension ViewController {

    private func doSomething() {
        ...
    }
}

// MARK: - AnalyticsProviderDelegate

extension ViewController: AnalyticsProviderDelegate {

    ...
}
```

### 2. IBOutlets
| Componente | Prefijo |
| ----------- | ----------- |
| View | view |
| Label | lbl |
| TextField | txt |
| Button | btn |
| StackView | stk |
| Switch | sw |
| ActivityIndicatorView | loader |
| PageControl | pgc |
| TableView | tbv |
| CollectionView | clv |
| ImageView | img |
| ScrollView | scv |

### 3. Funciones

El nombre de la función debe poder describir el proceso a realizar de manera clara y concisa.

```Swift
func authenticate(user: String, andPassword password: String) {
    ...
}

self.authenticate(user: "foo", andPassword: "bar")
```

Una buena practica a tomar en cuenta es que cada función debe tener **una sola razón de ser**, en este caso, la función `authenticate` solo debe realizar el proceso de autenticación, nada más.

Cuando tengamos una función que retorna un valor, esta no debe modificar ni aplicar alguna lógica a otras propiedas, ya que su función es la de retonar un valor, mas no realizar un cambio.

## Presenter

Work in progress (－ω－) zzZ

## Domain

Esta carpeta contiene las clases y/o estructuras que componen las entidades de negocio de la aplicación.

```Swift
struct User {

    var documentType: Int
    var documentNumber: String
    var password: String 

    init(parse json: Data) {
        ...
    }
}
```

Como se ve en el ejemplo, las variables mantienen la nomenclatura camelCase, y adicionalmente creamos un constructor con el cual podemos parsear la data externa (en este caso un JSON) a nuestros modelos.

Cabe recalcar que al ser la capa importante del proyecto, debe mantenerse lo menos acoplada posible, las entidades **no deben** depender de ninguna otra capa.

## Service

Work in progress (－ω－) zzZ

### Persistence

Work in progress (－ω－) zzZ

### Networking

Work in progress (－ω－) zzZ