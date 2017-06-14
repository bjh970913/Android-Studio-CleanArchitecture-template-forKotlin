package com.example.example.presenter.some

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import butterknife.bindView
import com.example.example.R
import com.example.example.data.entity.SomeDataEntity
import javax.inject.Inject

class SomeFragment : Fragment(), SomeContract.View {
    @Inject lateinit var presenter: SomePresenter

    val inputText: TextView by bindView<TextView>(R.id.inputText)
    val input0Button: Button by bindView<Button>(R.id.input0Button)
    val input1Button: Button by bindView<Button>(R.id.input1Button)

    override fun show(someDataEntity: SomeDataEntity) {
        inputText.text = someDataEntity.resParam1
    }

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = inflater!!.inflate(R.layout.some_fragment, container, false)
        return view
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        input0Button.setOnClickListener { presenter.loadData(0) }
        input1Button.setOnClickListener { presenter.loadData(1) }
    }

    companion object {
        fun newInstance(): SomeFragment {
            val args = Bundle()
            val fragment = SomeFragment()
            fragment.arguments = args
            return fragment
        }
    }

}