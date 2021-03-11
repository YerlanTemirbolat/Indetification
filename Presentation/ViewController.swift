//
//  ViewController.swift
//  Presentation
//
//  Created by Admin on 3/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundView = UIView()
    let titleLabel = UILabel()
    let systemTextView = UITextView()
    let pressButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        
        setupViews()
        setupConstraints()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    
    func setupViews() {
        backgroundView.backgroundColor = .white
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.layer.cornerRadius = 25
        view.addSubview(backgroundView)
        
        titleLabel.text = "Индетификация"
        titleLabel.font = UIFont.systemFont(ofSize: 40)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        systemTextView.text =
            """
            Основные функциональные модули Oz Forensics в ходе проверки выполняют комплексный анализ цифровых скан-копий или фото документов (паспорт, ID, права, справки и другие документы), анализируют изображения, полученные с помощью фото и видео-потока с изображениями в документах или имеющихся базах по алгоритмам биометрии лица, имеют функционал извлечения текста из цифровых копий паспортов и проверка копий паспортов на подлинность.
            """
        systemTextView.font = UIFont.systemFont(ofSize: 16)
        systemTextView.textAlignment = .center
        systemTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(systemTextView)
        
        pressButton.setTitle("Регистрация", for: .normal)
        pressButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        pressButton.backgroundColor = #colorLiteral(red: 0.1796163619, green: 0.5004648566, blue: 0.547953248, alpha: 1)
        pressButton.layer.cornerRadius = 25
        pressButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        pressButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pressButton)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            systemTextView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            systemTextView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            systemTextView.widthAnchor.constraint(equalToConstant: 320),
            systemTextView.heightAnchor.constraint(equalToConstant: 125)
        ])
        
        NSLayoutConstraint.activate([
            pressButton.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -20),
            pressButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            pressButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            pressButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    @objc func didTapButton() {
        let rootVC = SecondViewController()
        navigationController?.pushViewController(rootVC, animated: true)
    }
}

