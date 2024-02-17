import QtQuick 2.15
import QtQuick.Window 2.15


Item {
    width: 600
    enum ScreenSize {
        Phone, // 6" or less
        SmallTablet, //6-10"
        LargeTablet, //10" or larger
        Large //regular computer screen.
    }

    property int screenDiag: Math.sqrt(Screen.width * Screen.width + Screen.height * Screen.height) / Screen.pixelDensity
    property int screenType: screenDiag < 165 ? Sizes.ScreenSize.Phone :
                             screenDiag < 230 ? Sizes.ScreenSize.SmallTablet :
                             screenDiag < 355 ? Sizes.ScreenSize.LargeTablet : Sizes.ScreenSize.Large

    property int buttonSquare: screenType == Sizes.ScreenSize.Phone ? 10 * Screen.pixelDensity :
                               screenType == Sizes.ScreenSize.SmallTablet ? 20 * Screen.pixelDensity :
                               screenType == Sizes.ScreenSize.LargeTablet ? 25 * Screen.pixelDensity : Screen.height / 12
}
