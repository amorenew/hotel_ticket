package com.example.hotel_ticket

import android.widget.TextView
import com.google.android.material.bottomsheet.BottomSheetDialog
import com.squareup.picasso.Picasso
import de.hdodenhof.circleimageview.CircleImageView
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
            showBottomSheetDialog(context,ticketData);
        }

    }

    companion object {
        private fun showBottomSheetDialog(context: FlutterActivity, ticketData: TicketData) {
            val bottomSheetDialog = BottomSheetDialog(context)
            bottomSheetDialog.setContentView(R.layout.bottom_sheet_dialog)

            val tvName = bottomSheetDialog.findViewById<TextView>(R.id.tvName)
            val tvTicketNumber = bottomSheetDialog.findViewById<TextView>(R.id.tvTicketNumber)
            val tvType = bottomSheetDialog.findViewById<TextView>(R.id.tvType)
            val tvSeat = bottomSheetDialog.findViewById<TextView>(R.id.tvSeat)
            val profileImage = bottomSheetDialog.findViewById<CircleImageView>(R.id.profileImage)

            tvName?.text = ticketData.name;
            tvTicketNumber?.text = ticketData.ticketNumber;
            tvType?.text = ticketData.type;
            tvSeat?.text = ticketData.seat;

            Picasso.get()
                .load(ticketData.imageUrl)
                //.resize(35, 35)
                //.centerCrop()
                .into(profileImage)

            bottomSheetDialog.show()
        }

    }
}



