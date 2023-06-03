> 트립북 Product(iOS 플랫폼)에 포함되는 디자인 컴포넌트를 모듈화하여 Package 형태로 분리하였습니다.
* [Package Info.](#package-info)
* [Package Rules.](#package-rules)
* [Installation.](#installation)
* [Usage](#usage)
  * [Utils](#utils) - [Font(`TBFont`)](#fonttbfont)
  * [Utils](#utils) - [Icon(`TBIcon`)](#icontbicon)
  * [Utils](#utils) - [Color-Palette(`TBColor`)](#color-palettetbcolor)

# Package Info.
- 지원 플랫폼(버전): iOS 14.0 및 상위 버전

# Package Rules.
- 각 View Class의 접두사에는 프로젝트 고유 접두사로서 `Tripbook`의 약어로 `TB`를 사용한다.
Ex) `TBButton`, `TBTextField`, `TBText`

# Installation.
Swift Package Manager를 사용해 Tripbook Component Package 종속 항목을 설치하고 관리합니다.
1. 앱 프로젝트를 연 상태로 Xcode에서 File(파일) > Add Packages(패키지 추가)로 이동합니다.
2. 메시지가 표시되면 Tripbook Component Package 레포지토리(저장소)를 추가합니다.
```
https://github.com/tripbook2023/iOS-TripBook-Component-Package
```
3. 사용할 SDK 버전을 선택합니다.
완료되면 Xcode가 백그라운드에서 자동으로 종속 항목을 확인하고 다운로드하기 시작합니다.

# Usage
## Utils
### Font(`TBFont`)
> 트립북 Design System에서 사용되는 Custom Font들을 포함하고 사용성을 고려해 `Function`으로 처리하였습니다.
- 현재, 포함된 Font List
    - SUIT
- 현재, 포함된 Font Typo List
    - Heading1
    - Heading2
    - Title1
    - Title2
    - Title3
    - Title4
    - Body1
    - Body2
    - Body3
    - Caption1
    - Caption2
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
2-1. `Body View` 내부에 Text View Font를 Package Custom Fonts로 설정하고자 한다면, Custom Font ViewModifier처럼 `.font(.suit(weight: TBFont.Suit, size: CGFloat))`을 호출한다.
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
2-2. `Body View` 내부에 Text View Font를 Package Custom Fonts - Typo Style로 설정하고자 한다면, Custom Font ViewModifier처럼 `.font(TBFont Style)`을 호출한다.
```swift
struct RootView: View {
    var body: some View {
        VStack {
            Text("Example")
                .font(TBFont.heading_1)
        }
        .configureFont()
    }
}
```
### Icon(`TBIcon`)
> 트립북 Design System에서 사용되는 Icon들을 정형화하고 사용성을 고려해 `View`와 `Modifier`로 처리하였습니다.
- 현재, 포함된 Icon List
    - Before
    - Next
    - Down
    - Check
    - Cancel
    - Picture
    - Camera
    - Timer
#### 사용법
1. 기본적으로 Icon 모두 `View`의 형태로 구현을 진행하였기에 `Class.static` 프로퍼티를 호출하듯 사용한다.
```swift
struct RootView: View {
    var body: some View {
        VStack {
            TBIcon.before
        }
    }
}
```
2. 디자인 시스템에서는 총 4가지 단계로 사이즈의 구분점이 존재한다. 다음과 같이 구분점에 대한 명칭을 추가하였습니다.
- TBIconSize
    - Tiny: 14 pts
    - Small: 18 pts
    - Medium: 24 pts
    - Big: 36 pts
Icon의 크기를 구분점에 맞춰 조정하려면 `.iconSize(size: TBIconSize)`라는 `Modifier`을 호출해 줍니다.
### Color-Palette(`TBColor`)
> 트립북 Design System에서 사용되는 Color들을 정형화하고 사용성을 고려해 `View`로 처리하였습니다.
- 현재, 포함된 Color List
    - Primary
    - Secondary
    - Point
    - GrayScale
    - State
        - Warning
#### 사용법
1. 기본적으로 Color 모두 `View(Color)`의 형태로 구현을 진행하였기에 `Class.static` 프로퍼티를 호출하듯 사용한다.
```swift
struct RootView: View {
    var body: some View {
        VStack {
            TBColor.primary.main
            TBColor.secondary.levels[0]
            TBColor.state.warning
        }
    }
}
```
> 각 Color들의 Main Color는 특별히 지정이 되어있지 않다면 Middle Value의 Color가 `Init` 시점에 지정됩니다.

> Point Color의 경우, Green과 Navy Color로 다시 구분점이 나뉘어 `TBColor.point.green.{value}` 또는 `TBColor.point.navy.{value}`로 호출하여야 합니다.
