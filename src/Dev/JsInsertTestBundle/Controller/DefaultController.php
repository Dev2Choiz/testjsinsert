<?php

namespace Dev\JsInsertTestBundle\Controller;

use JsInsert\JsInsert;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class DefaultController
 * @package Dev\JsInsertTestBundle\Controller
 *
 */
class DefaultController extends Controller
{

    /**
     * @Route(name="jit_default_index", path="/")
     * @\JsInsert\Annotation\JsInsert()
     */
    public function indexAction()
    {
        JsInsert::addVariable('string', 'root.path1.path1.var1', 'var1');
        JsInsert::addVariable('string', 'root.path1.path2.var2', 'var2');
        JsInsert::addVariable('string', 'root.path2.var1', 'var1');
        JsInsert::addVariable('string', 'root.path2.var2', 'var2');
        JsInsert::addVariable('string', 'var1', 'var1');
        JsInsert::addVariable('string', 'var2', 'var2');

        JsInsert::addCssVariable('comment-color', '#808080');
        JsInsert::addCssVariable('value-color', '#6A8759');
        JsInsert::addCssVariable('variable-color', '#9876AA');

        JsInsert::addScript('console.log("script1");');
        JsInsert::addScript('console.log("script2");');

        return $this->render('@DevJsInsertTest/Default/index.html.twig', array(
        ));
    }

}
