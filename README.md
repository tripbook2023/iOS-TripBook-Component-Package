> 트립북 Product(iOS 플랫폼)에 포함되는 디자인 컴포넌트를 모듈화하여 Package 형태로 분리하였습니다.
* [Package Info.](#package-info)
* [Package Rules.](#package-rules)
* [Usage](#usage)
  * [Utils](#utils) - [Font(`TBFont`)](#fonttbfont)

# Package Info.
- 지원 플랫폼(버전): iOS 14.0 및 상위 버전

# Package Rules.
- 각 View Class의 접두사에는 프로젝트 고유 접두사로서 `Tripbook`의 약어로 `TB`를 사용한다.
Ex) `TBButton`, `TBTextField`, `TBText`

# Usage
## Utils
### Font(`TBFont`)
> 트립북 Product에서 사용되는 Custom Font들을 포함하고 사용성을 고려해 `Function`으로 처리하였습니다.
- 현재, 포함된 Font List
    - SUIT
#### 사용법
1. 최상위 `View`에 `.configureFont()` 함수 호출로 Package Custom Fonts를 등록한다.
```swift
struct RootView: View {
    var body: some View {
        VStack {
            /// here is Views...
        }
        .configureFont()
    }
}
```
2. `Body View` 내부에 Text View Font를 Package Custom Fonts로 설정하고자 한다면, Custom Font ViewModifier처럼 `.font(.suit(weight: TBFont.Suit, size: CGFloat))`을 호출한다.
```swift
struct RootView: View {
    var body: some View {
        VStack {
            Text("Example")
                .font(.suit(weight: regular, size: 20))
        }
        .configureFont()
    }
}
```
