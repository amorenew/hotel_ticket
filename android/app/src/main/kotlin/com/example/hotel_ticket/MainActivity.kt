package com.example.hotel_ticket

import com.google.android.material.bottomsheet.BottomSheetDialog
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine


class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // setting-up the host-Api
        TicketHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, TicketApi(this))

        // setting-up the Flutter-Api
        // val flutterApi = BrightnessPigeon.FlutterBrightnessApi(flutterEngine.dartExecutor.binaryMessenger)

    }

    class TicketApi(private val context: FlutterActivity) : TicketHostApi {
        override fun sendTicketData(ticketData: TicketData, callback: (Result<Boolean>) -> Unit) {
            showBottomSheetDialog(context);
        }

    }

    companion object {
        private fun showBottomSheetDialog(context:FlutterActivity ) {
            val bottomSheetDialog = BottomSheetDialog(context)
            bottomSheetDialog.setContentView(R.layout.bottom_sheet_dialog)
            //val copy = bottomSheetDialog.findViewById<LinearLayout>(R.id.copyLinearLayout)
            bottomSheetDialog.show()
        }

    }
}



