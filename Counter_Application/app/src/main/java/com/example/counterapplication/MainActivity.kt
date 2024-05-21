package com.example.counterapplication

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.example.counterapplication.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    lateinit var binding: ActivityMainBinding
    private var counter=0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding=ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.buttonIncrement.setOnClickListener{
            binding.textview.text=incrementCounter().toString()
        }
        binding.buttonDecrement.setOnClickListener{
            binding.textview.text=decrementCounter().toString()
        }
        binding.buttonReset.setOnClickListener{
            binding.textview.text=resetCounter().toString()
        }


        }
    private fun incrementCounter():Int {
        return ++counter
    }
    private fun decrementCounter():Int {
        return --counter

    }
    private fun resetCounter(): Int{
        counter=0
        return counter
    }
    }
