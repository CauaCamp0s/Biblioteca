# -*- mode: python ; coding: utf-8 -*-

a = Analysis(
    ['app.py'],
    pathex=['.'],  # Certifique-se de que o caminho está correto para o diretório atual
    binaries=[],
    datas=[
        ('templates', 'templates'),  # Inclui a pasta templates
        ('static', 'static'),        # Inclui a pasta static
        ('config.py', '.'),          # Inclui o arquivo de configuração
        ('sgb.sql', '.'),            # Inclui o arquivo SQL, se necessário
    ],
    hiddenimports=['flask_sqlalchemy'],  # Inclua flask_sqlalchemy aqui
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.datas,
    [],
    name='biblioteca_app',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=True,  # Altere para False se não quiser o console aberto
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
