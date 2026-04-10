import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.muein.orders.dev"
            resValue(type = "string", name = "app_name", value = "Muein Orders Dev")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.muein.orders"
            resValue(type = "string", name = "app_name", value = "Muein Orders")
        }
    }
}