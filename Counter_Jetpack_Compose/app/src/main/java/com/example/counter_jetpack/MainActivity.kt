@file:OptIn(ExperimentalMaterial3Api::class)

package com.example.counter_jetpack

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.counter_jetpack.ui.theme.Counter_JetpackTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Counter_JetpackTheme {
                // A surface container using a yellow background color
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = Color.Yellow
                ) {
                    CounterApp()
                }
            }
        }
    }
}

@Composable
fun CounterApp() {
    // State to hold the counter value
    val counter = remember { mutableStateOf(0) }

    Scaffold(
        topBar = {
            SmallTopAppBarExample()
        }
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            // Display the counter value
            Text(
                text = "Counter: ${counter.value}", fontSize = 20.sp,
                modifier = Modifier.align(Alignment.CenterHorizontally).padding(16.dp)
            )

            // Row for buttons
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .align(Alignment.CenterHorizontally),
                horizontalArrangement = Arrangement.SpaceAround,
            ) {
                MyButton(text = "Increment") {
                    counter.value += 1
                }
                MyButton(text = "Reset") {
                    counter.value = 0
                }
                MyButton(text = "Decrement") {
                    counter.value -= 1
                }
            }

            // Scrollable content
            ScrollContent(PaddingValues())
        }
    }
}

@Composable
fun SmallTopAppBarExample() {
    TopAppBar(
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = Color.Cyan,
            titleContentColor = Color.Black,
        ),
        title = {
            Text("Counter App Using JetPack", fontSize = 25.sp, fontWeight = FontWeight.Bold)
        }
    )
}

@Composable
fun ScrollContent(innerPadding: PaddingValues) {

}

@Composable
fun MyButton(text: String, onClick: () -> Unit) {
    Button(
        onClick = onClick,
        colors = ButtonDefaults.buttonColors(
            containerColor = Color.Blue,
            contentColor = Color.White
        )
    ) {
        Text(text = text)
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    Counter_JetpackTheme {
        Surface(
            modifier = Modifier.fillMaxSize(),
            color = Color.Yellow
        ) {
            CounterApp()
        }
    }
}
