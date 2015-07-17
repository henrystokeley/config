def set_trace():
    from IPython.core.debugger import Pdb
    import sys
    # another color scheme for dark backgrounds is 'Linux'
    Pdb(color_scheme='LightBG').set_trace(sys._getframe().f_back)


def debugf(f, *args, **kwargs):
    from IPython.core.debugger import Pdb
    pdb = Pdb(color_scheme='LightBG')
    return pdb.runcall(f, *args, **kwargs)
